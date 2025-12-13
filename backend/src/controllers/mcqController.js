const { generateMCQsForSkills } = require('../services/mcqService');

// Generate MCQs for job skills
const generateMCQsController = async (req, res) => {
  try {
    const { skills, selfAssessment } = req.body;
    
    if (!skills || !Array.isArray(skills)) {
      return res.status(400).json({
        success: false,
        message: 'Skills array is required'
      });
    }

    const mcqs = await generateMCQsForSkills(skills, selfAssessment);
    
    res.status(200).json({
      success: true,
      data: mcqs,
      count: mcqs.length
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

// Submit MCQ answers and get score
const submitMCQAnswersController = async (req, res) => {
  try {
    const { answers, questions } = req.body;
    
    if (!answers || !questions) {
      return res.status(400).json({
        success: false,
        message: 'Answers and questions are required'
      });
    }

    let score = 0;
    const results = [];

    questions.forEach((question, index) => {
      const isCorrect = answers[index] === question.answer;
      if (isCorrect) score++;
      
      results.push({
        question: question.question,
        userAnswer: answers[index],
        correctAnswer: question.answer,
        isCorrect
      });
    });

    const percentage = ((score / questions.length) * 100).toFixed(2);

    res.status(200).json({
      success: true,
      data: {
        score,
        totalQuestions: questions.length,
        percentage,
        results
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
