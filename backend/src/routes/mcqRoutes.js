const express = require('express');
const router = express.Router();
const {
  generateMCQsController,
  submitMCQAnswersController
} = require('../controllers/mcqController');

// MCQ routes
router.post('/generate', generateMCQsController);
router.post('/submit', submitMCQAnswersController);

module.exports = router;
