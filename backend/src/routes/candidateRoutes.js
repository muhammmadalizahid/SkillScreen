const express = require('express');
const router = express.Router();
const { authenticateToken } = require('../middleware/authMiddleware');
const {
  submitApplicationController,
  getAllApplicationsController,
  getApplicationByIdController,
  getRankedCandidatesController
} = require('../controllers/candidateController');

// Application routes
router.post('/', authenticateToken, submitApplicationController);
router.get('/', getAllApplicationsController);
router.get('/:id', getApplicationByIdController);
router.get('/ranked/:jobId', getRankedCandidatesController);

module.exports = router;
