const { generateMCQsForSkills, getCachedMCQs } = require('../services/mcqService');
const {
  createTestSession,
  completeTestSession,
  getAllDomains,
  getSkillsByDomain,
  saveTestResult
} = require('../services/databaseService');
const supabase = require('../config/db');

// Generate MCQs for job skills - Fetch from question_bank table
const generateMCQsController = async (req, res) => {
  try {
    const { applicationId, jobId, domainId } = req.body;

    // Create test session
    let testSession = null;
    if (applicationId) {
      testSession = await createTestSession(applicationId);
    }

    const testSessionId = testSession?.id || `temp_${Date.now()}`;

    // Check cache first
    let cachedData = getCachedMCQs(testSessionId);
    
    if (cachedData) {
      console.log(`Using cached MCQs for session: ${testSessionId}`);
      
      return res.status(200).json({
        success: true,
        data: cachedData.questionsArray,
        testSessionId, // return the actual cache key (temp or real)
        count: cachedData.questionsArray.length,
        cached: true
      });
    }

    // Get domain name
    let domainName = 'General';
    if (domainId) {
      const domains = await getAllDomains();
      const domain = domains.find(d => d.id === domainId);
      if (domain) {
        domainName = domain.name;
      }
    }

    // Get job details for experience level
    let experienceLevel = 'Mid Level'; // default
    if (jobId) {
      const { data: jobData } = await supabase
        .from('jobs')
        .select('experience_level')
        .eq('id', jobId)
        .single();
      if (jobData) {
        experienceLevel = jobData.experience_level || 'Mid Level';
      }
    }

    // Fetch MCQs from question_bank database
    console.log(`Fetching MCQs for session ${testSessionId} in domain: ${domainName}, level: ${experienceLevel}`);
    const mcqData = await generateMCQsForSkills(domainName, [], testSessionId, experienceLevel);
    
    // MCQs are cached in memory for scoring - no need to save to database
    
    res.status(200).json({
      success: true,
      data: mcqData.questionsArray,
      testSessionId, // return temp id when DB session is not created
      count: mcqData.questionsArray.length,
      cached: false
    });
  } catch (error) {
    console.error('Error generating MCQs:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to generate MCQs',
      error: error.message
    });
  }
};

// Submit MCQ answers and calculate score using manual logic (no AI)
const submitMCQAnswersController = async (req, res) => {
  try {
    const { testSessionId, answers } = req.body;
    
    console.log('📝 Submit request received:', { testSessionId, answersCount: answers?.length });
    
    if (!answers || !Array.isArray(answers)) {
      return res.status(400).json({
        success: false,
        message: 'Answers array is required'
      });
    }

    // Get cached MCQ data to access correct answers
    const cachedData = getCachedMCQs(testSessionId);
    
    console.log('🔍 Cache lookup result:', cachedData ? 'Found' : 'Not found');
    
    if (!cachedData) {
      console.error('❌ Cache miss for testSessionId:', testSessionId);
      console.error('Available cache keys:', Object.keys(require('../services/mcqService').mcqCache || {}));
      return res.status(404).json({
        success: false,
        message: 'Test session not found or expired'
      });
    }

    // Manual score calculation (deterministic, no AI)
    let correctCount = 0;
    const results = [];
    const questions = cachedData.questionsArray;

    for (let i = 0; i < answers.length; i++) {
      const userAnswer = answers[i];
      const question = questions[i];
      const correctAnswer = cachedData.answers.find(question.id);
      
      // String comparison for correctness
      const isCorrect = userAnswer === correctAnswer;
      
      if (isCorrect) {
        correctCount++;
      }
      
      results.push({
        questionId: question.id,
        skill: question.skill,
        question: question.question,
        userAnswer: userAnswer,
        correctAnswer: correctAnswer,
        isCorrect: isCorrect
      });

      // Note: Skipping candidate_answers table save since question.id is not a UUID
      // The cache already stores all answer data needed for scoring
    }

    // Calculate percentage (manual arithmetic)
    const totalQuestions = questions.length;
    const percentage = (correctCount / totalQuestions) * 100;
    const roundedPercentage = Math.round(percentage * 100) / 100;

    // Mark test session as complete (if using real DB session, not temp)
    if (testSessionId && !testSessionId.startsWith('temp_')) {
      try {
        await completeTestSession(testSessionId);
      } catch (sessionError) {
        console.error('Error completing test session:', sessionError);
        // Continue even if session completion fails
      }
    }
    
    // Save test results if applicationId provided
    if (req.body.applicationId) {
      try {
        await saveTestResult(
          req.body.applicationId,
          roundedPercentage,
          totalQuestions,
          correctCount,
          roundedPercentage
        );
        console.log(`✅ Test results saved for application: ${req.body.applicationId}`);
      } catch (resultError) {
        console.error('❌ Error saving test results:', resultError);
        // Continue even if saving fails
      }
    } else {
      console.warn('⚠️  No applicationId provided - test results not saved to database');
    }

    console.log(`✅ Test completed: ${correctCount}/${totalQuestions} (${roundedPercentage}%)`);

    res.status(200).json({
      success: true,
      data: {
        score: correctCount,
        total: totalQuestions,
        percentage: roundedPercentage,
        results: results
      }
    });
  } catch (error) {
    console.error('Error submitting MCQ answers:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to submit answers',
      error: error.message
    });
  }
};

module.exports = {
  generateMCQsController,
  submitMCQAnswersController
};

