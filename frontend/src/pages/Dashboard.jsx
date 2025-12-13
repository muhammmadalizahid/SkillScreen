import { useState, useEffect } from 'react';
import RecruiterDashboard from '../components/RecruiterDashboard';
import { getJobs, getApplications } from '../services/api';

const Dashboard = () => {
  const [jobs, setJobs] = useState([]);
  const [selectedJob, setSelectedJob] = useState(null);
  const [applications, setApplications] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
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
      const data = await getJobs();
      setJobs(data);
      if (data.length > 0) {
        setSelectedJob(data[0]);
      }
    } catch (error) {
      console.error('Error fetching jobs:', error);
      // Mock data for development
      const mockJobs = [
        {
          id: 1,
          title: 'Full Stack Developer',
          domain: 'Web Development',
          description: 'Looking for an experienced full stack developer',
          skills: [
            { name: 'JavaScript', weight: 9 },
            { name: 'React', weight: 8 },
            { name: 'Node.js', weight: 7 },
            { name: 'PostgreSQL', weight: 6 }
          ],
          skillGraph: {
            'React': ['JavaScript'],
            'Node.js': ['JavaScript']
          }
        }
      ];
      setJobs(mockJobs);
      setSelectedJob(mockJobs[0]);
    } finally {
      setLoading(false);
    }
  };

  const fetchApplications = async (jobId) => {
    try {
      const data = await getApplications(jobId);
      setApplications(data);
    } catch (error) {
      console.error('Error fetching applications:', error);
      // Mock data for development
      const mockApplications = [
        {
          id: 1,
          jobId: jobId,
          candidateName: 'Alice Johnson',
          candidateEmail: 'alice@example.com',
          selfAssessment: {
            'JavaScript': 9,
            'React': 8,
            'Node.js': 7,
            'PostgreSQL': 6
          },
          testScore: 85,
          timestamp: new Date().toISOString(),
          aiFeedback: 'Strong candidate with excellent JavaScript skills. Recommended for interview.'
        },
        {
          id: 2,
          jobId: jobId,
          candidateName: 'Bob Smith',
          candidateEmail: 'bob@example.com',
          selfAssessment: {
            'JavaScript': 8,
            'React': 9,
            'Node.js': 8,
            'PostgreSQL': 7
          },
          testScore: 90,
          timestamp: new Date().toISOString(),
          aiFeedback: 'Outstanding React expertise. Top candidate for the position.'
        },
        {
          id: 3,
          jobId: jobId,
          candidateName: 'Charlie Davis',
          candidateEmail: 'charlie@example.com',
          selfAssessment: {
            'JavaScript': 7,
            'React': 6,
            'Node.js': 7,
            'PostgreSQL': 8
          },
          testScore: 75,
          timestamp: new Date().toISOString(),
          aiFeedback: 'Solid fundamentals. Would benefit from more React experience.'
        },
        {
          id: 4,
          jobId: jobId,
          candidateName: 'Diana Martinez',
          candidateEmail: 'diana@example.com',
          selfAssessment: {
            'JavaScript': 10,
            'React': 9,
            'Node.js': 9,
            'PostgreSQL': 8
          },
          testScore: 95,
          timestamp: new Date().toISOString(),
          aiFeedback: 'Exceptional candidate with comprehensive full-stack expertise. Highly recommended.'
        },
        {
          id: 5,
          jobId: jobId,
          candidateName: 'Ethan Brown',
          candidateEmail: 'ethan@example.com',
          selfAssessment: {
            'JavaScript': 6,
            'React': 7,
            'Node.js': 6,
            'PostgreSQL': 5
          },
          testScore: 70,
          timestamp: new Date().toISOString(),
          aiFeedback: 'Meets minimum requirements. Consider for junior position.'
        }
      ];
      setApplications(mockApplications);
    }
  };

  if (loading) {
    return (
      <div className="container mx-auto px-4 py-16 text-center">
        <div className="animate-spin rounded-full h-16 w-16 border-b-2 border-blue-600 mx-auto"></div>
        <p className="mt-4 text-gray-600">Loading dashboard...</p>
      </div>
    );
  }

  if (jobs.length === 0) {
    return (
      <div className="container mx-auto px-4 py-16 text-center">
        <h2 className="text-2xl font-bold mb-4">No Jobs Posted Yet</h2>
        <p className="text-gray-600 mb-6">Create a job posting to start receiving applications</p>
        <button
          onClick={() => window.location.href = '/jobs'}
          className="px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700"
        >
          Post a Job
        </button>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 py-8">
      <div className="container mx-auto px-4">
        {/* Job Selector */}
        <div className="mb-6">
          <label className="block text-sm font-medium mb-2">Select Job:</label>
          <select
            value={selectedJob?.id || ''}
            onChange={(e) => {
              const job = jobs.find(j => j.id === parseInt(e.target.value));
              setSelectedJob(job);
            }}
            className="w-full max-w-md px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500"
          >
            {jobs.map(job => (
              <option key={job.id} value={job.id}>
                {job.title} ({applications.filter(a => a.jobId === job.id).length} applications)
              </option>
            ))}
          </select>
        </div>

        {/* Dashboard */}
        {selectedJob && (
          <RecruiterDashboard
            job={selectedJob}
            applications={applications.filter(a => a.jobId === selectedJob.id)}
          />
        )}
      </div>
    </div>
  );
};

export default Dashboard;
