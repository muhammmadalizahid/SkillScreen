const { submitApplication, getAllApplications, getApplicationById, rankCandidates } = require('../services/validationService');

// Submit application
const submitApplicationController = async (req, res) => {
  try {
    const applicationData = req.body;
    const application = await submitApplication(applicationData);
    
    res.status(201).json({
      success: true,
      data: application,
      message: 'Application submitted successfully'
    });
  } catch (error) {
    console.error('Error submitting application:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to submit application',
      error: error.message
    });
  }
};

// Get all applications
const getAllApplicationsController = async (req, res) => {
  try {
    const { jobId } = req.query;
    const applications = await getAllApplications(jobId);
    
    res.status(200).json({
      success: true,
      data: applications,
      count: applications.length
    });
  } catch (error) {
    console.error('Error fetching applications:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to fetch applications',
      error: error.message
    });
  }
};

// Get application by ID
const getApplicationByIdController = async (req, res) => {
  try {
    const { id } = req.params;
    const application = await getApplicationById(id);
    
    if (!application) {
      return res.status(404).json({
        success: false,
        message: 'Application not found'
      });
    }

    res.status(200).json({
      success: true,
      data: application
    });
  } catch (error) {
    console.error('Error fetching application:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to fetch application',
      error: error.message
    });
  }
};

// Get ranked candidates for a job (using MaxHeap)
const getRankedCandidatesController = async (req, res) => {
  try {
    const { jobId } = req.params;
    const { topN } = req.query;
    
    const rankedCandidates = await rankCandidates(jobId, parseInt(topN) || 10);
    
    res.status(200).json({
      success: true,
      data: rankedCandidates,
      count: rankedCandidates.length
    });
  } catch (error) {
    console.error('Error ranking candidates:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to rank candidates',
      error: error.message
    });
  }
};

module.exports = {
  submitApplicationController,
  getAllApplicationsController,
  getApplicationByIdController,
  getRankedCandidatesController
};
