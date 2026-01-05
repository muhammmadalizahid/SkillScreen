import { useState, useEffect } from 'react';
import RecruiterDashboard from '../components/RecruiterDashboard';
import JobPostingForm from '../components/JobPostingForm';
import ConfirmDialog from '../components/ConfirmDialog';
import { getUserJobs, getApplications, createJob, updateJob, deleteJob, getJobStatistics } from '../services/api';
import { transformJobs, transformApplications } from '../utils/dataTransformers';
import BinarySearch from '../dsa/BinarySearch';
import HeapSort from '../dsa/HeapSort';

const Dashboard = () => {
  const [jobs, setJobs] = useState([]);
  const [selectedJob, setSelectedJob] = useState(null);
  const [applications, setApplications] = useState([]);
  const [loading, setLoading] = useState(true);
  const [showPostForm, setShowPostForm] = useState(false);
  const [editingJob, setEditingJob] = useState(null);
  const [userId, setUserId] = useState(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [sortBy, setSortBy] = useState('title');
  const [sortOrder, setSortOrder] = useState('asc');
  const [hoveredJobId, setHoveredJobId] = useState(null);
  const [sidebarCollapsed, setSidebarCollapsed] = useState(false);
  const [confirmDialog, setConfirmDialog] = useState({ isOpen: false, title: '', message: '', onConfirm: null });
  const [successMessage, setSuccessMessage] = useState('');
  const [jobStatistics, setJobStatistics] = useState({});

  useEffect(() => {
    // Get user ID from localStorage
    const user = JSON.parse(localStorage.getItem('skillscreen_user') || '{}');
    if (user.id) {
      setUserId(user.id);
    }
    fetchJobs();
  }, []);

  useEffect(() => {
    if (selectedJob) {
      fetchApplications(selectedJob.id);
    }
  }, [selectedJob]);

  const fetchJobs = async () => {
    try {
      setLoading(true);
      const data = await getUserJobs();
      const jobsArray = transformJobs(Array.isArray(data) ? data : []);
      setJobs(jobsArray);
      if (jobsArray.length > 0) {
        setSelectedJob(jobsArray[0]);
        // Fetch statistics for all jobs
        fetchJobsStatistics(jobsArray);
      }
    } catch (error) {
      console.error('Error fetching jobs:', error);
      setJobs([]);
    } finally {
      setLoading(false);
    }
  };

  const fetchJobsStatistics = async (jobsArray) => {
    try {
      const statsPromises = jobsArray.map(job => 
        getJobStatistics(job.id).catch(err => {
          console.error(`Failed to fetch stats for job ${job.id}:`, err);
          return { views: 0, applicationsCount: 0, averageScore: 0 };
        })
      );
      const statsArray = await Promise.all(statsPromises);
      
      const statsMap = {};
      jobsArray.forEach((job, index) => {
        statsMap[job.id] = statsArray[index];
      });
      
      setJobStatistics(statsMap);
    } catch (error) {
      console.error('Error fetching job statistics:', error);
    }
  };

  const fetchApplications = async (jobId) => {
    try {
      const data = await getApplications(jobId);
      const transformed = transformApplications(Array.isArray(data) ? data : []);
      setApplications(transformed);
    } catch (error) {
      console.error('Error fetching applications:', error);
      setApplications([]);
    }
  };

  const handleCreateJob = async (jobData) => {
    try {
      if (editingJob) {
        await updateJob(editingJob.id, jobData);
        setSuccessMessage('Job updated successfully!');
      } else {
        await createJob(jobData);
        setSuccessMessage('Job posted successfully!');
      }
      setShowPostForm(false);
      setEditingJob(null);
      await fetchJobs();
      setTimeout(() => setSuccessMessage(''), 3000);
    } catch (error) {
      console.error('Error saving job:', error);
      setConfirmDialog({
        isOpen: true,
        title: 'Error',
        message: 'Failed to save job: ' + error.message,
        onConfirm: () => setConfirmDialog({ ...confirmDialog, isOpen: false }),
        confirmText: 'OK',
        confirmStyle: 'primary'
      });
    }
  };

  const handleEditJob = (job) => {
    setEditingJob(job);
    setShowPostForm(true);
  };

  const handleDeleteJob = async (jobId) => {
    setConfirmDialog({
      isOpen: true,
      title: 'Delete Job',
      message: 'Are you sure you want to delete this job? This action cannot be undone and all associated applications will be lost.',
      onConfirm: async () => {
        try {
          await deleteJob(jobId);
          setSuccessMessage('Job deleted successfully!');
          if (selectedJob?.id === jobId) {
            setSelectedJob(null);
          }
          await fetchJobs();
          setTimeout(() => setSuccessMessage(''), 3000);
        } catch (error) {
          console.error('Error deleting job:', error);
          setConfirmDialog({
            isOpen: true,
            title: 'Error',
            message: 'Failed to delete job: ' + error.message,
            onConfirm: () => setConfirmDialog({ ...confirmDialog, isOpen: false }),
            confirmText: 'OK',
            confirmStyle: 'primary'
          });
        }
        setConfirmDialog({ ...confirmDialog, isOpen: false });
      },
      confirmText: 'Delete',
      cancelText: 'Cancel',
      confirmStyle: 'danger'
    });
  };

  const getFilteredAndSortedJobs = () => {
    let result = jobs;

    // Sort the jobs first using Heap Sort (tree-based sorting)
    if (sortBy) {
      result = HeapSort.sort(result, sortBy, sortOrder);
    }

    // Then search through the sorted data
    if (searchQuery && searchQuery.trim()) {
      result = BinarySearch.search(result, searchQuery, ['title', 'description', 'domain'], sortBy);
    }

    return result;
  };

  if (showPostForm) {
    return (
      <div className="min-h-screen bg-white">
        <div className="max-w-4xl mx-auto px-6 py-10">
          <div className="flex items-center justify-between mb-6">
            <div>
              <p className="text-xs font-medium text-gray-500">Job Management</p>
              <h1 className="text-xl font-semibold text-gray-900">{editingJob ? 'Edit job' : 'Create job'}</h1>
            </div>
            <button
              onClick={() => {
                setShowPostForm(false);
                setEditingJob(null);
              }}
              className="text-sm text-gray-500 hover:text-gray-900 transition-colors"
            >
              Cancel
            </button>
          </div>
          <div className="rounded-lg border border-gray-200 p-6 bg-white">
            <JobPostingForm
              onSubmit={handleCreateJob}
              initialData={editingJob}
              isEditing={!!editingJob}
            />
          </div>
        </div>
      </div>
    );
  }

  if (loading) {
    return (
      <div className="min-h-screen bg-white flex items-center justify-center">
        <div className="w-8 h-8 border border-gray-200 border-t-gray-900 rounded-full animate-spin" aria-label="Loading" />
      </div>
    );
  }

  if (jobs.length === 0) {
    return (
      <div className="min-h-screen bg-[#f3f2ef] flex items-center justify-center px-8">
        <div className="text-center max-w-md">
          <div className="bg-white rounded-lg border border-gray-200 shadow-sm p-12">
            <div className="w-20 h-20 rounded-full bg-[#e7f3ff] flex items-center justify-center mx-auto mb-6">
              <svg className="w-10 h-10 text-[#0a66c2]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
              </svg>
            </div>
            <h2 className="text-2xl font-bold text-gray-900 mb-3">No Jobs Posted Yet</h2>
            <p className="text-sm text-gray-600 mb-6 leading-relaxed">
              Get started by creating your first job posting. Once posted, you'll be able to receive and manage applications from qualified candidates.
            </p>
            <button
              onClick={() => setShowPostForm(true)}
              className="px-6 py-3 bg-[#0a66c2] text-white text-sm font-semibold rounded-lg hover:bg-[#004182] shadow-md hover:shadow-lg transition-all"
            >
              Create Your First Job
            </button>
          </div>
        </div>
      </div>
    );
  }

  const filteredJobs = getFilteredAndSortedJobs();

  return (
    <div className="min-h-screen bg-[#f3f2ef]">
      {/* Success Message */}
      {successMessage && (
        <div className="fixed top-4 right-4 z-50 bg-green-50 border border-green-200 text-green-800 px-6 py-3 rounded-lg shadow-lg flex items-center gap-3 animate-fadeIn">
          <svg className="w-5 h-5 text-green-600" fill="currentColor" viewBox="0 0 20 20">
            <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd" />
          </svg>
          <span className="text-sm font-medium">{successMessage}</span>
        </div>
      )}

      {/* Confirm Dialog */}
      <ConfirmDialog
        isOpen={confirmDialog.isOpen}
        title={confirmDialog.title}
        message={confirmDialog.message}
        onConfirm={confirmDialog.onConfirm}
        onCancel={() => setConfirmDialog({ ...confirmDialog, isOpen: false })}
        confirmText={confirmDialog.confirmText}
        cancelText={confirmDialog.cancelText}
        confirmStyle={confirmDialog.confirmStyle}
      />

      <div className="border-b border-gray-200 bg-white">
        <div className="max-w-[1600px] mx-auto px-8 py-6 flex items-center justify-between">
          <div>
            <h1 className="text-4xl font-bold text-gray-900 mb-2">Job Dashboard</h1>
            <p className="text-sm text-gray-600">{jobs.length} active {jobs.length === 1 ? 'posting' : 'postings'}</p>
          </div>
          <button
            onClick={() => setShowPostForm(true)}
            className="px-5 py-3 bg-[#0a66c2] text-white text-sm font-semibold rounded-lg hover:bg-[#004182] shadow-md hover:shadow-lg transition-all"
          >
            Create New Job
          </button>
        </div>
      </div>

      <div className="max-w-[1600px] mx-auto px-8 py-6 space-y-6">
        <div className="bg-white p-6 rounded-lg border border-gray-200 shadow-sm">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
            <div className="md:col-span-2">
              <label className="block text-sm font-semibold text-gray-900 mb-2">Search Jobs</label>
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search by title, domain, or keywords..."
                className="w-full px-4 py-2.5 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2] focus:ring-1 focus:ring-[#0a66c2]"
              />
            </div>
            <div className="grid grid-cols-2 gap-2">
              <div>
                <label className="block text-sm font-semibold text-gray-900 mb-2">Sort By</label>
                <select
                  value={sortBy}
                  onChange={(e) => setSortBy(e.target.value)}
                  className="w-full px-3 py-2.5 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2]"
                >
                  <option value="title">Title</option>
                  <option value="domain">Domain</option>
                  <option value="created_at">Date</option>
                </select>
              </div>
              <div>
                <label className="block text-sm font-semibold text-gray-900 mb-2">Order</label>
                <select
                  value={sortOrder}
                  onChange={(e) => setSortOrder(e.target.value)}
                  className="w-full px-3 py-2.5 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2]"
                >
                  {sortBy === 'created_at' ? (
                    <>
                      <option value="desc">Newest</option>
                      <option value="asc">Oldest</option>
                    </>
                  ) : (
                    <>
                      <option value="asc">A-Z</option>
                      <option value="desc">Z-A</option>
                    </>
                  )}
                </select>
              </div>
            </div>
          </div>
        </div>

        {filteredJobs.length === 0 ? (
          <div className="text-center py-20 bg-white rounded-lg border border-gray-200">
            <p className="text-lg font-semibold text-gray-900 mb-2">No jobs found</p>
            <p className="text-sm text-gray-600">Try adjusting your search criteria</p>
          </div>
        ) : (
          <div className="flex gap-6 items-start">
            {/* Collapsible Sidebar */}
            {!sidebarCollapsed && (
              <div className="w-72 flex-shrink-0 bg-white rounded-lg border border-gray-200 shadow-sm overflow-hidden">
                <div className="px-5 py-4 border-b border-gray-200 flex items-center justify-between">
                  <div>
                    <h2 className="text-sm font-semibold text-gray-900">Your Postings</h2>
                    <p className="text-xs text-gray-600 mt-0.5">{filteredJobs.length} {filteredJobs.length === 1 ? 'job' : 'jobs'}</p>
                  </div>
                  <button
                    onClick={() => setSidebarCollapsed(true)}
                    className="p-1.5 text-gray-500 hover:text-gray-700 hover:bg-gray-100 rounded transition-all"
                    title="Collapse sidebar"
                  >
                    <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M11 19l-7-7 7-7m8 14l-7-7 7-7" />
                    </svg>
                  </button>
                </div>
                <div className="divide-y divide-gray-100 max-h-[calc(100vh-280px)] overflow-y-auto">
                  {filteredJobs.map(job => (
                    <div
                      key={job.id}
                      className={`group cursor-pointer transition-all ${
                        selectedJob?.id === job.id
                          ? 'bg-[#e7f3ff]'
                          : 'hover:bg-gray-50'
                      }`}
                      onClick={() => setSelectedJob(job)}
                      onMouseEnter={() => setHoveredJobId(job.id)}
                      onMouseLeave={() => setHoveredJobId(null)}
                    >
                      <div className="px-5 py-4">
                        <div className="mb-3 flex flex-col items-start">
                          <h3 className="text-sm font-bold text-gray-900 mb-2 w-full text-left">{job.title}</h3>
                          <span className="inline-block px-3 py-1 bg-[#e7f3ff] text-[#0a66c2] text-xs font-semibold rounded-full">
                            {job.domain}
                          </span>
                        </div>
                        
                        {/* Job Statistics */}
                        <div className="space-y-2 mb-3">
                          <div className="flex items-center gap-2 text-xs text-gray-600">
                            <svg className="w-3.5 h-3.5" fill="currentColor" viewBox="0 0 20 20">
                              <path d="M9 6a3 3 0 11-6 0 3 3 0 016 0zM17 6a3 3 0 11-6 0 3 3 0 016 0zM12.93 17c.046-.327.07-.66.07-1a6.97 6.97 0 00-1.5-4.33A5 5 0 0119 16v1h-6.07zM6 11a5 5 0 015 5v1H1v-1a5 5 0 015-5z" />
                            </svg>
                            <span>{applications.filter(a => a.jobId === job.id).length} applications</span>
                          </div>
                          {applications.filter(a => a.jobId === job.id).length > 0 && jobStatistics[job.id]?.averageScore > 0 && (
                            <div className="flex items-center gap-2 text-xs text-gray-600">
                              <svg className="w-3.5 h-3.5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                              </svg>
                              <span>{jobStatistics[job.id]?.averageScore.toFixed(1)}% avg score</span>
                            </div>
                          )}
                        </div>
                                                {(hoveredJobId === job.id || selectedJob?.id === job.id) && (
                          <div className="flex items-center gap-2 pt-3 border-t border-gray-200">
                            <button
                              onClick={(e) => {
                                e.stopPropagation();
                                handleEditJob(job);
                              }}
                              className="text-xs font-medium text-[#0a66c2] hover:underline"
                            >
                              Edit
                            </button>
                            <span className="text-gray-300">•</span>
                            <button
                              onClick={(e) => {
                                e.stopPropagation();
                                handleDeleteJob(job.id);
                              }}
                              className="text-xs font-medium text-red-600 hover:underline"
                            >
                              Delete
                            </button>
                          </div>
                        )}
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {/* Expand Sidebar Button */}
            {sidebarCollapsed && (
              <button
                onClick={() => setSidebarCollapsed(false)}
                className="flex-shrink-0 p-3 bg-white border border-gray-200 rounded-lg shadow-sm hover:shadow-md transition-all"
                title="Show sidebar"
              >
                <svg className="w-5 h-5 text-gray-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 5l7 7-7 7M5 5l7 7-7 7" />
                </svg>
              </button>
            )}

            {/* Main Content */}
            <div className="flex-1 min-w-0">
              {selectedJob && (
                <div className="bg-white rounded-lg border border-gray-200 shadow-sm p-6">
                  <div className="mb-6">
                    <div className="flex items-start justify-between gap-4 mb-3">
                      <div className="flex-1">
                        <h2 className="text-xl font-bold text-gray-900 mb-3 text-left">{selectedJob.title}</h2>
                        <div className="text-left">
                          <span className="inline-block px-3 py-1.5 bg-[#e7f3ff] text-[#0a66c2] text-xs font-semibold rounded-full">
                            {selectedJob.domain}
                          </span>
                        </div>
                      </div>
                      <button
                        onClick={() => handleEditJob(selectedJob)}
                        className="px-4 py-2 text-sm font-medium text-gray-700 border border-gray-300 rounded-lg hover:border-[#0a66c2] hover:text-[#0a66c2] transition-all"
                      >
                        Edit Job
                      </button>
                    </div>
                    <p className="text-sm text-gray-600 leading-relaxed whitespace-pre-line mt-4">{selectedJob.description}</p>
                  </div>

                  <div className="border-t border-gray-200 pt-6">
                    <RecruiterDashboard
                      job={selectedJob}
                      applications={applications.filter(a => a.jobId === selectedJob.id)}
                    />
                  </div>
                </div>
              )}
            </div>
          </div>
        )}
      </div>
    </div>
  );
};

export default Dashboard;
