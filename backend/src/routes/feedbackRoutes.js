const express = require('express');
const router = express.Router();
const {
  generateFeedbackController,
  getFeedbackByApplicationController
} = require('../controllers/feedbackController');

// Feedback routes
router.post('/generate', generateFeedbackController);
router.get('/:applicationId', getFeedbackByApplicationController);

module.exports = router;
