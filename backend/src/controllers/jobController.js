const { createJob, getAllJobs, getJobsByUserId, getJobById, updateJob, deleteJob } = require('../services/databaseService');
const jobGraphService = require('../services/jobGraphService');

// Create a new job
const createJobController = async (req, res) => {
  try {
    const jobData = {
      ...req.body,
      user_id: req.user?.id // Add user_id from authenticated user
    };
    
    // Create the job
    const job = await createJob(jobData);
    
    res.status(201).json({
      success: true,
      data: job,
      message: 'Job created successfully'
    });
  } catch (error) {
    console.error('Error creating job:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to create job',
      error: error.message
    });
  }
};

// Get all jobs
const getAllJobsController = async (req, res) => {
  try {
    const jobs = await getAllJobs();
    res.status(200).json({
      success: true,
      data: jobs,
      count: jobs.length
    });
  } catch (error) {
    console.error('Error fetching jobs:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to fetch jobs',
      error: error.message
    });
  }
};

// Get jobs by user ID (authenticated user's jobs)
const getUserJobsController = async (req, res) => {
  try {
    const userId = req.user?.id;
    if (!userId) {
      return res.status(401).json({
        success: false,
        message: 'User not authenticated'
      });
    }

    const jobs = await getJobsByUserId(userId);
    res.status(200).json({
      success: true,
      data: jobs,
      count: jobs.length
    });
  } catch (error) {
    console.error('Error fetching user jobs:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to fetch user jobs',
      error: error.message
    });
  }
};

// Get job by ID
const getJobByIdController = async (req, res) => {
  try {
    const { id } = req.params;
    const job = await getJobById(id);
    
    if (!job) {
      return res.status(404).json({
        success: false,
        message: 'Job not found'
      });
    }

    res.status(200).json({
      success: true,
      data: job
    });
  } catch (error) {
    console.error('Error fetching job:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to fetch job',
      error: error.message
    });
  }
};

// Update job
const updateJobController = async (req, res) => {
  try {
    const { id } = req.params;
    const jobData = req.body;
    const job = await updateJob(id, jobData);
    
    if (!job) {
      return res.status(404).json({
        success: false,
        message: 'Job not found'
      });
    }

    res.status(200).json({
      success: true,
      data: job,
      message: 'Job updated successfully'
    });
  } catch (error) {
    console.error('Error updating job:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to update job',
      error: error.message
    });
  }
};

// Delete job
const deleteJobController = async (req, res) => {
  try {
    const { id } = req.params;
    const result = await deleteJob(id);
    
    if (!result) {
      return res.status(404).json({
        success: false,
        message: 'Job not found'
      });
    }

    res.status(200).json({
      success: true,
      message: 'Job deleted successfully'
    });
  } catch (error) {
    console.error('Error deleting job:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to delete job',
      error: error.message
    });
  }
};

// Get similar jobs using Graph BFS
const getSimilarJobsController = async (req, res) => {
  try {
    const { id } = req.params;
    const { limit = 5, depth = 2 } = req.query;

    const similarJobs = await jobGraphService.findSimilarJobs(
      id,
      parseInt(depth),
      parseInt(limit)
    );

    res.status(200).json({
      success: true,
      data: similarJobs,
      count: similarJobs.length,
      message: 'Similar jobs found using BFS graph traversal'
    });
  } catch (error) {
    console.error('Error finding similar jobs:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to find similar jobs',
      error: error.message
    });
  }
};

// Get job graph statistics
const getGraphStatsController = async (req, res) => {
  try {
    const stats = await jobGraphService.getGraphStats();
    
    res.status(200).json({
      success: true,
      data: stats,
      message: 'Job network graph statistics'
    });
  } catch (error) {
    console.error('Error fetching graph stats:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to fetch graph statistics',
      error: error.message
    });
  }
};

// Rebuild job graph (admin/dev endpoint)
const rebuildGraphController = async (req, res) => {
  try {
    await jobGraphService.rebuildGraph();
    const stats = await jobGraphService.getGraphStats();
    
    res.status(200).json({
      success: true,
      data: stats,
      message: 'Job graph rebuilt successfully'
    });
  } catch (error) {
    console.error('Error rebuilding graph:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to rebuild graph',
      error: error.message
    });
  }
};

module.exports = {
  createJobController,
  getAllJobsController,
  getUserJobsController,
  getJobByIdController,
  updateJobController,
  deleteJobController,
  getSimilarJobsController,
  getGraphStatsController,
  rebuildGraphController
};
