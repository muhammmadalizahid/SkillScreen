const { createJob, getAllJobs, getJobById, updateJob, deleteJob } = require('../services/skillService');

// Create a new job
const createJobController = async (req, res) => {
  try {
    const jobData = req.body;
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
    const { domain } = req.query;
    const jobs = await getAllJobs(domain);
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

module.exports = {
  createJobController,
  getAllJobsController,
  getJobByIdController,
  updateJobController,
  deleteJobController
};
