// API Service for backend communication
const API_BASE_URL = import.meta.env.VITE_API_BASE_URL || 'http://localhost:3000/api';

// Helper function to get auth token
const getAuthToken = () => {
  return localStorage.getItem('skillscreen_token');
};

// Helper function for API calls
const apiCall = async (endpoint, options = {}) => {
  try {
    const token = getAuthToken();
    const headers = {
      'Content-Type': 'application/json',
      ...options.headers,
    };

    // Add authorization header if token exists
    if (token) {
      headers['Authorization'] = `Bearer ${token}`;
    }

    const response = await fetch(`${API_BASE_URL}${endpoint}`, {
      ...options,
      headers,
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
  const response = await apiCall('/jobs');
  return response.data || [];
};

export const getUserJobs = async () => {
  const response = await apiCall('/jobs/user/my-jobs');
  return response.data || [];
};

export const getJobById = async (id) => {
  const response = await apiCall(`/jobs/${id}`);
  return response.data || null;
};

export const createJob = async (jobData) => {
  const response = await apiCall('/jobs', {
    method: 'POST',
    body: JSON.stringify(jobData),
  });
  return response.data || null;
};

// Domain APIs
export const getDomains = async () => {
  const response = await apiCall('/domains');
  return response.data || [];
};

export const updateJob = async (id, jobData) => {
  const response = await apiCall(`/jobs/${id}`, {
    method: 'PUT',
    body: JSON.stringify(jobData),
  });
  return response.data || null;
};

export const deleteJob = async (id) => {
  const response = await apiCall(`/jobs/${id}`, {
    method: 'DELETE',
  });
  return response.data || null;
};

// Similar Jobs API using Graph BFS
export const getSimilarJobs = async (jobId, limit = 5, depth = 2) => {
  const response = await apiCall(`/jobs/${jobId}/similar?limit=${limit}&depth=${depth}`);
  return response.data || [];
};

// Graph Statistics API
export const getGraphStats = async () => {
  const response = await apiCall('/jobs/graph/stats');
  return response.data || null;
};

// Application APIs
export const getApplications = async (jobId) => {
  const response = await apiCall(`/applications?jobId=${jobId}`);
  return response.data || [];
};

export const submitApplication = async (applicationData) => {
  const response = await apiCall('/applications', {
    method: 'POST',
    body: JSON.stringify(applicationData),
  });
  return response.data || null;
};

export const getApplicationById = async (id) => {
  const response = await apiCall(`/applications/${id}`);
  return response.data || null;
};

// MCQ APIs
export const getMCQs = async (skillData) => {
  const response = await apiCall('/mcqs/generate', {
    method: 'POST',
    body: JSON.stringify(skillData),
  });
  // Return full response to preserve testSessionId
  return response || { data: [] };
};

export const submitMCQAnswers = async (answers) => {
  const response = await apiCall('/mcqs/submit', {
    method: 'POST',
    body: JSON.stringify(answers),
  });
  // Return full response to preserve all result fields
  return response?.data || response || null;
};

// Feedback APIs
export const getFeedback = async (applicationId) => {
  const response = await apiCall(`/feedback/${applicationId}`);
  return response.data || null;
};

export const generateFeedback = async (candidateData) => {
  const response = await apiCall('/feedback/generate', {
    method: 'POST',
    body: JSON.stringify(candidateData),
  });
  return response.data || null;
};

export default {
  getJobs,
  getJobById,
  createJob,
  updateJob,
  deleteJob,
  getSimilarJobs,
  getGraphStats,
  getDomains,
  getApplications,
  submitApplication,
  getApplicationById,
  getMCQs,
  submitMCQAnswers,
  getFeedback,
  generateFeedback,
};
