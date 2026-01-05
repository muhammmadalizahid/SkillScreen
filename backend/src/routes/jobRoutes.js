const express = require('express');
const router = express.Router();
const { authenticateToken } = require('../middleware/authMiddleware');
const {
  createJobController,
  getAllJobsController,
  getUserJobsController,
  getJobByIdController,
  updateJobController,
  deleteJobController,
  getSimilarJobsController,
  getGraphStatsController,
  rebuildGraphController,
  getJobStatisticsController
} = require('../controllers/jobController');

// Job routes
router.post('/', authenticateToken, createJobController);
router.get('/', getAllJobsController);
router.get('/user/my-jobs', authenticateToken, getUserJobsController);
router.get('/graph/stats', getGraphStatsController); // Graph statistics
router.post('/graph/rebuild', authenticateToken, rebuildGraphController); // Rebuild graph
router.get('/:id', getJobByIdController);
router.get('/:id/similar', getSimilarJobsController); // Similar jobs using BFS
router.get('/:id/statistics', getJobStatisticsController); // Job statistics
router.put('/:id', authenticateToken, updateJobController);
router.delete('/:id', authenticateToken, deleteJobController);

module.exports = router;
