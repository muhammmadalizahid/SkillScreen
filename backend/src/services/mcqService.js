const { callGeminiAPI } = require('../config/gemini');

// Manual Queue implementation for question delivery
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

  toArray() {
    const result = [];
    let current = this.front;
    while (current) {
      result.push(current.data);
      current = current.next;
    }
    return result;
  }
}

// Generate MCQs for skills using Gemini API
const generateMCQsForSkills = async (skills, selfAssessment = {}) => {
  try {
    const questionQueue = new Queue();

    for (const skill of skills) {
      const candidateLevel = selfAssessment[skill.name] || 5;
      let difficulty = 'medium';
      
      if (candidateLevel >= 8) difficulty = 'hard';
      else if (candidateLevel <= 4) difficulty = 'easy';

      try {
        const prompt = `Generate 1 multiple-choice question for the skill "${skill.name}".
Include 4 options and specify the correct answer.
Difficulty: ${difficulty} based on candidate level ${candidateLevel}.

Output format (JSON only, no markdown):
{
  "question": "Your question here",
  "options": ["Option A", "Option B", "Option C", "Option D"],
  "answer": "The correct option text"
}`;

        const response = await callGeminiAPI(prompt);
        
        // Try to parse JSON from response
        const jsonMatch = response.match(/\{[\s\S]*\}/);
        if (jsonMatch) {
          const mcq = JSON.parse(jsonMatch[0]);
          questionQueue.enqueue({
            ...mcq,
            skill: skill.name,
            difficulty
          });
        } else {
          // Fallback question
          questionQueue.enqueue({
            question: `What is your proficiency level with ${skill.name}?`,
            options: [
              `${skill.name} - Beginner`,
              `${skill.name} - Intermediate`,
              `${skill.name} - Advanced`,
              `${skill.name} - Expert`
            ],
            answer: `${skill.name} - Intermediate`,
            skill: skill.name,
            difficulty
          });
        }
      } catch (error) {
        console.error(`Error generating MCQ for ${skill.name}:`, error);
        // Add fallback question
        questionQueue.enqueue({
          question: `How would you rate your knowledge of ${skill.name}?`,
          options: [
            'Basic understanding',
            'Intermediate level',
            'Advanced proficiency',
            'Expert level'
          ],
          answer: 'Intermediate level',
          skill: skill.name,
          difficulty
        });
      }
    }

    return questionQueue.toArray();
  } catch (error) {
    console.error('Error generating MCQs:', error);
    
    // Return fallback questions
    return skills.map(skill => ({
      question: `What is your experience with ${skill.name}?`,
      options: [
        `No experience with ${skill.name}`,
        `Basic ${skill.name} knowledge`,
        `Intermediate ${skill.name} skills`,
        `Advanced ${skill.name} expertise`
      ],
      answer: `Intermediate ${skill.name} skills`,
      skill: skill.name
    }));
  }
};

module.exports = {
  generateMCQsForSkills,
  Queue
};
