const { generatePersonalizedFeedback } = require('../services/feedbackService');

// Generate AI-powered personalized feedback
const generateFeedbackController = async (req, res) => {
  try {
    const { candidateData, testResults } = req.body;
    
    if (!candidateData || !testResults) {
      return res.status(400).json({
        success: false,
        message: 'Candidate data and test results are required'
      });
    }

    const feedback = await generatePersonalizedFeedback(candidateData, testResults);
    
    res.status(200).json({
      success: true,
      data: feedback
    });
  } catch (error) {
    console.error('Error generating feedback:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to generate feedback',
      error: error.message
    });
  }
};

// Get feedback by application ID
const getFeedbackByApplicationController = async (req, res) => {
  try {
    const { applicationId } = req.params;
    
    // This would fetch from database in production
    // For now, generate new feedback
    const application = await getApplicationById(applicationId);
    
    if (!application) {
      return res.status(404).json({
        success: false,
        message: 'Application not found'
      });
    }

    const feedback = await generatePersonalizedFeedback(
      application,
      application.testResults
    );
    
    res.status(200).json({
      success: true,
      data: feedback
    });
  } catch (error) {
    console.error('Error fetching feedback:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to fetch feedback',
      error: error.message
    });
  }
};

module.exports = {
  generateFeedbackController,
  getFeedbackByApplicationController
};
