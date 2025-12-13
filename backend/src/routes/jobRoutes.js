const express = require('express');
const router = express.Router();
const {
  createJobController,
  getAllJobsController,
  getJobByIdController,
  updateJobController,
  deleteJobController
} = require('../controllers/jobController');

// Job routes
router.post('/', createJobController);
router.get('/', getAllJobsController);
router.get('/:id', getJobByIdController);
router.put('/:id', updateJobController);
router.delete('/:id', deleteJobController);

module.exports = router;
