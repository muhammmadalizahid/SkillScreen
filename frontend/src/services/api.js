// API Service for backend communication
const API_BASE_URL = import.meta.env.VITE_API_BASE_URL || 'http://localhost:3000/api';

// Helper function for API calls
const apiCall = async (endpoint, options = {}) => {
  try {
    const response = await fetch(`${API_BASE_URL}${endpoint}`, {
      ...options,
      headers: {
        'Content-Type': 'application/json',
        ...options.headers,
      },
    });

    if (!response.ok) {
      throw new Error(`API Error: ${response.statusText}`);
    }

    return await response.json();
  } catch (error) {
    console.error('API call failed:', error);
    throw error;
  }
};

// Job APIs
export const getJobs = async () => {
  return await apiCall('/jobs');
};

export const getJobById = async (id) => {
  return await apiCall(`/jobs/${id}`);
};

export const createJob = async (jobData) => {
  return await apiCall('/jobs', {
    method: 'POST',
    body: JSON.stringify(jobData),
  });
};

export const updateJob = async (id, jobData) => {
  return await apiCall(`/jobs/${id}`, {
    method: 'PUT',
    body: JSON.stringify(jobData),
  });
};

export const deleteJob = async (id) => {
  return await apiCall(`/jobs/${id}`, {
    method: 'DELETE',
  });
};

// Application APIs
export const getApplications = async (jobId) => {
  return await apiCall(`/applications?jobId=${jobId}`);
};

export const submitApplication = async (applicationData) => {
  return await apiCall('/applications', {
    method: 'POST',
    body: JSON.stringify(applicationData),
  });
};

export const getApplicationById = async (id) => {
  return await apiCall(`/applications/${id}`);
};

// MCQ APIs
export const getMCQs = async (skillData) => {
  return await apiCall('/mcqs/generate', {
    method: 'POST',
    body: JSON.stringify(skillData),
  });
};

export const submitMCQAnswers = async (answers) => {
  return await apiCall('/mcqs/submit', {
    method: 'POST',
    body: JSON.stringify(answers),
  });
};

// Feedback APIs
export const getFeedback = async (applicationId) => {
  return await apiCall(`/feedback/${applicationId}`);
};

export const generateFeedback = async (candidateData) => {
  return await apiCall('/feedback/generate', {
    method: 'POST',
    body: JSON.stringify(candidateData),
  });
};

export default {
  getJobs,
  getJobById,
  createJob,
  updateJob,
  deleteJob,
  getApplications,
  submitApplication,
  getApplicationById,
  getMCQs,
  submitMCQAnswers,
  getFeedback,
  generateFeedback,
};
