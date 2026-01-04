const supabase = require('../config/db');

// Manual Queue implementation for FIFO question delivery
class QueueNode {
  constructor(data) {
    this.data = data;
    this.next = null;
  }
}

class Queue {
  constructor() {
    this.front = null;
    this.rear = null;
    this.size = 0;
  }

  enqueue(data) {
    const newNode = new QueueNode(data);
    if (this.isEmpty()) {
      this.front = newNode;
      this.rear = newNode;
    } else {
      this.rear.next = newNode;
      this.rear = newNode;
    }
    this.size++;
  }

  dequeue() {
    if (this.isEmpty()) return null;
    const data = this.front.data;
    this.front = this.front.next;
    if (!this.front) {
      this.rear = null;
    }
    this.size--;
    return data;
  }

  isEmpty() {
    return this.size === 0;
  }

  peek() {
    return this.isEmpty() ? null : this.front.data;
  }

  toArray() {
    const result = [];
    let current = this.front;
    while (current) {
      result.push(current.data);
      current = current.next;
    }
    return result;
  }

  getSize() {
    return this.size;
  }
}

// Manual LinkedList for storing correct answers
class AnswerNode {
  constructor(questionId, correctAnswer) {
    this.questionId = questionId;
    this.correctAnswer = correctAnswer;
    this.next = null;
  }
}

class AnswerList {
  constructor() {
    this.head = null;
    this.size = 0;
  }

  insert(questionId, correctAnswer) {
    const newNode = new AnswerNode(questionId, correctAnswer);
    if (!this.head) {
      this.head = newNode;
    } else {
      let current = this.head;
      while (current.next) {
        current = current.next;
      }
      current.next = newNode;
    }
    this.size++;
  }

  find(questionId) {
    let current = this.head;
    while (current) {
      if (current.questionId === questionId) {
        return current.correctAnswer;
      }
      current = current.next;
    }
    return null;
  }
}

// In-memory cache for generated MCQs
// Key: testSessionId, Value: { queue, answers, timestamp }
const mcqCache = {};

// Cache expiration time (1 hour)
const CACHE_TTL = 60 * 60 * 1000;

// Clean expired cache entries
const cleanExpiredCache = () => {
  const now = Date.now();
  for (const key in mcqCache) {
    if (now - mcqCache[key].timestamp > CACHE_TTL) {
      delete mcqCache[key];
    }
  }
};

// Fetch MCQs from question_bank table in database
// Returns: Queue of questions and LinkedList of answers
const generateMCQsForSkills = async (domain, skills, testSessionId = null, experienceLevel = 'Mid Level') => {
  try {
    // Check cache first
    if (testSessionId && mcqCache[testSessionId]) {
      console.log(`Cache hit for test session: ${testSessionId}`);
      return mcqCache[testSessionId];
    }

    // Clean expired cache entries
    cleanExpiredCache();

    // Validate skills array
    if (!Array.isArray(skills) || skills.length === 0) {
      console.warn('No skills provided, fetching default questions');
      skills = [{ name: 'General Knowledge', count: 10 }];
    }

    // Prepare skills array with counts
    const skillsWithCounts = skills.map(skill => ({
      name: skill.name || skill,
      count: 5 // Fetch 5 questions per skill
    }));

    console.log(`Fetching MCQs from question_bank for ${skillsWithCounts.length} skills:`, skillsWithCounts.map(s => s.name).join(', '));

    // Check if supabase is configured
    if (!supabase) {
      console.warn('⚠️  Supabase not configured, using fallback questions');
      const mcqsArray = [];
      for (const skill of skillsWithCounts) {
        for (let i = 0; i < skill.count; i++) {
          mcqsArray.push({
            skill: skill.name,
            question: `Sample question ${i + 1} about ${skill.name}`,
            options: [
              `Option A for ${skill.name}`,
              `Option B for ${skill.name}`,
              `Option C for ${skill.name}`,
              `Option D for ${skill.name}`
            ],
            correctAnswer: `Option A for ${skill.name}`,
            difficulty: 'Easy'
          });
        }
      }

      // Build queue and return
      const questionQueue = new Queue();
      const answerList = new AnswerList();
      let questionId = 1;
      for (const mcq of mcqsArray) {
        questionQueue.enqueue({
          id: questionId,
          skill: mcq.skill,
          question: mcq.question,
          options: mcq.options,
          difficulty: mcq.difficulty
        });
        answerList.insert(questionId, mcq.correctAnswer);
        questionId++;
      }

      const cacheEntry = {
        queue: questionQueue,
        answers: answerList,
        timestamp: Date.now(),
        questionsArray: questionQueue.toArray()
      };

      if (testSessionId) {
        mcqCache[testSessionId] = cacheEntry;
      }

      return cacheEntry;
    }

    // Get domain ID first
    const { data: domainData, error: domainError } = await supabase
      .from('domains')
      .select('id')
      .eq('name', domain)
      .single();

    if (domainError || !domainData) {
      console.error('Domain not found:', domain, domainError);
      console.warn('⚠️  Falling back to sample questions');
      
      // Use fallback questions
      const mcqsArray = [];
      for (const skill of skillsWithCounts) {
        for (let i = 0; i < skill.count; i++) {
          mcqsArray.push({
            skill: skill.name,
            question: `Sample question ${i + 1} about ${skill.name} in ${domain}`,
            options: [
              `Option A for ${skill.name}`,
              `Option B for ${skill.name}`,
              `Option C for ${skill.name}`,
              `Option D for ${skill.name}`
            ],
            correctAnswer: `Option A for ${skill.name}`,
            difficulty: 'Easy'
          });
        }
      }

      // Build queue and return
      const questionQueue = new Queue();
      const answerList = new AnswerList();
      let questionId = 1;
      for (const mcq of mcqsArray) {
        questionQueue.enqueue({
          id: questionId,
          skill: mcq.skill,
          question: mcq.question,
          options: mcq.options,
          difficulty: mcq.difficulty
        });
        answerList.insert(questionId, mcq.correctAnswer);
        questionId++;
      }

      const cacheEntry = {
        queue: questionQueue,
        answers: answerList,
        timestamp: Date.now(),
        questionsArray: questionQueue.toArray()
      };

      if (testSessionId) {
        mcqCache[testSessionId] = cacheEntry;
      }

      return cacheEntry;
    }

    const domainId = domainData.id;

    // Fetch questions from question_bank table by domain only
    // The question_bank is organized by domain, not specific skills
    let mcqsArray = [];

    console.log(`📚 Fetching 30 questions for domain: ${domain}, level: ${experienceLevel}`);

    // Define question distribution based on experience level (total = 30)
    let difficultyDistribution = {};
    if (experienceLevel === 'Entry Level') {
      // Entry: More easy, fewer hard (15 Easy, 10 Medium, 5 Hard)
      difficultyDistribution = { Easy: 15, Medium: 10, Hard: 5 };
    } else if (experienceLevel === 'Senior Level') {
      // Senior: More hard, fewer easy (5 Easy, 10 Medium, 15 Hard)
      difficultyDistribution = { Easy: 5, Medium: 10, Hard: 15 };
    } else {
      // Mid Level: Balanced (10 Easy, 10 Medium, 10 Hard)
      difficultyDistribution = { Easy: 10, Medium: 10, Hard: 10 };
    }

    console.log(`📊 Question distribution: Easy=${difficultyDistribution.Easy}, Medium=${difficultyDistribution.Medium}, Hard=${difficultyDistribution.Hard}`);

    // Fetch questions from each difficulty level
    for (const difficulty of ['Easy', 'Medium', 'Hard']) {
      const targetCount = difficultyDistribution[difficulty];
      
      const { data: questions, error } = await supabase
        .from('question_bank')
        .select('*')
        .eq('domain_id', domainId)
        .eq('difficulty', difficulty);

      if (error) {
        console.error(`Error fetching ${difficulty} questions:`, error);
        continue;
      }

      if (questions && questions.length > 0) {
        // Randomly shuffle and select exact number needed
        const shuffled = questions.sort(() => Math.random() - 0.5);
        const selected = shuffled.slice(0, Math.min(targetCount, questions.length));
        
        console.log(`✅ Fetched ${selected.length}/${targetCount} ${difficulty} questions`);
        
        // Add questions to array
        selected.forEach((q) => {
          mcqsArray.push({
            skill: domain, // Use domain name
            question: q.question,
            options: q.options,
            correctAnswer: q.correct_answer,
            difficulty: q.difficulty,
            questionBankId: q.id
          });
        });
      } else {
        console.warn(`⚠️  No ${difficulty} questions found in question_bank for ${domain}`);
      }
    }

    // Ensure we have exactly 30 questions (or as close as possible)
    if (mcqsArray.length > 30) {
      mcqsArray = mcqsArray.slice(0, 30);
      console.log(`📏 Trimmed to exactly 30 questions`);
    } else if (mcqsArray.length < 30) {
      console.warn(`⚠️  Only ${mcqsArray.length}/30 questions available for ${domain}`);
    } else {
      console.log(`✅ Exactly 30 questions loaded`);
    }

    // If no questions found in database, create fallback
    if (mcqsArray.length === 0) {
      console.warn('No questions found in question_bank, using fallback');
      // Create 30 fallback questions
      for (let i = 0; i < 30; i++) {
        const difficulty = i < 10 ? 'Easy' : i < 20 ? 'Medium' : 'Hard';
        mcqsArray.push({
          skill: domain,
          question: `Sample question ${i + 1} about ${domain}`,
          options: [
            `Option A for ${domain}`,
            `Option B for ${domain}`,
            `Option C for ${domain}`,
            `Option D for ${domain}`
          ],
          correctAnswer: `Option A for ${domain}`,
          difficulty: difficulty
        });
      }
    }

    console.log(`Fetched ${mcqsArray.length} questions from question_bank`);

    // Store in Queue (FIFO delivery)
    const questionQueue = new Queue();
    const answerList = new AnswerList();

    let questionId = 1;
    for (const mcq of mcqsArray) {
      const questionData = {
        id: questionId,
        skill: mcq.skill,
        question: mcq.question,
        options: mcq.options,
        difficulty: mcq.difficulty,
        questionBankId: mcq.questionBankId
      };
      
      questionQueue.enqueue(questionData);
      answerList.insert(questionId, mcq.correctAnswer);
      questionId++;
    }

    // Cache the results
    const cacheEntry = {
      queue: questionQueue,
      answers: answerList,
      timestamp: Date.now(),
      questionsArray: questionQueue.toArray()
    };

    if (testSessionId) {
      mcqCache[testSessionId] = cacheEntry;
      console.log(`Cached ${questionQueue.getSize()} questions for session: ${testSessionId}`);
    }

    return cacheEntry;
  } catch (error) {
    console.error('Error generating MCQs:', error);
    throw error;
  }
};

// Get cached MCQs for a test session
const getCachedMCQs = (testSessionId) => {
  return mcqCache[testSessionId] || null;
};

// Clear cache for a specific session
const clearSessionCache = (testSessionId) => {
  if (mcqCache[testSessionId]) {
    delete mcqCache[testSessionId];
    return true;
  }
  return false;
};

module.exports = {
  generateMCQsForSkills,
  getCachedMCQs,
  clearSessionCache,
  Queue,
  AnswerList
};
