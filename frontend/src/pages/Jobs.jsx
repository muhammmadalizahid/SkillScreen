import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import JobPostingForm from '../components/JobPostingForm';
import { getJobs, createJob } from '../services/api';

const Jobs = () => {
  const [jobs, setJobs] = useState([]);
  const [showPostForm, setShowPostForm] = useState(false);
  const [loading, setLoading] = useState(true);
  const [filterDomain, setFilterDomain] = useState('');

  useEffect(() => {
    fetchJobs();
  }, []);

  const fetchJobs = async () => {
    try {
      setLoading(true);
      const data = await getJobs();
      setJobs(data);
    } catch (error) {
      console.error('Error fetching jobs:', error);
      // Use mock data for development
      setJobs([
        {
          id: 1,
          title: 'Full Stack Developer',
          domain: 'Web Development',
          description: 'Looking for an experienced full stack developer',
          skills: [
            { name: 'JavaScript', weight: 9 },
            { name: 'React', weight: 8 },
            { name: 'Node.js', weight: 7 }
          ]
        },
        {
          id: 2,
          title: 'Machine Learning Engineer',
          domain: 'AI/ML',
          description: 'Join our AI team to build cutting-edge ML models',
          skills: [
            { name: 'Python', weight: 10 },
            { name: 'TensorFlow', weight: 8 },
            { name: 'Statistics', weight: 7 }
          ]
        }
      ]);
    } finally {
      setLoading(false);
    }
  };

  const handleCreateJob = async (jobData) => {
    try {
      const newJob = await createJob(jobData);
      setJobs([...jobs, newJob]);
      setShowPostForm(false);
      alert('Job posted successfully!');
    } catch (error) {
      console.error('Error creating job:', error);
      // For development, add locally
      const newJob = { ...jobData, id: Date.now() };
      setJobs([...jobs, newJob]);
      setShowPostForm(false);
      alert('Job posted successfully! (Mock mode)');
    }
  };

  const domains = [
    'All',
    'Web Development',
    'Software Engineering',
    'AI/ML',
    'Cybersecurity',
    'DevOps',
    'Data Science'
  ];

  const filteredJobs = filterDomain && filterDomain !== 'All'
    ? jobs.filter(job => job.domain === filterDomain)
    : jobs;

  if (showPostForm) {
    return (
      <div className="container mx-auto px-4 py-8">
        <button
          onClick={() => setShowPostForm(false)}
          className="mb-4 px-4 py-2 text-blue-600 hover:text-blue-800"
        >
          ← Back to Jobs
        </button>
        <JobPostingForm onSubmit={handleCreateJob} />
      </div>
    );
  }

  return (
    <div className="container mx-auto px-4 py-8">
      <div className="flex justify-between items-center mb-8">
        <h1 className="text-4xl font-bold">Browse Jobs</h1>
        <button
          onClick={() => setShowPostForm(true)}
          className="px-6 py-3 bg-blue-600 text-white font-semibold rounded-lg hover:bg-blue-700 shadow-md"
        >
          + Post a Job
        </button>
      </div>

      {/* Domain Filter */}
      <div className="mb-8 flex gap-2 flex-wrap">
        {domains.map((domain) => (
          <button
            key={domain}
            onClick={() => setFilterDomain(domain === 'All' ? '' : domain)}
            className={`px-4 py-2 rounded-lg font-medium transition ${
              (domain === 'All' && !filterDomain) || filterDomain === domain
                ? 'bg-blue-600 text-white'
                : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
            }`}
          >
            {domain}
          </button>
        ))}
      </div>

      {/* Jobs List */}
      {loading ? (
        <div className="text-center py-16">
          <div className="animate-spin rounded-full h-16 w-16 border-b-2 border-blue-600 mx-auto"></div>
          <p className="mt-4 text-gray-600">Loading jobs...</p>
        </div>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {filteredJobs.map((job) => (
            <div
              key={job.id}
              className="bg-white rounded-lg shadow-md p-6 hover:shadow-lg transition"
            >
              <h2 className="text-2xl font-bold mb-2">{job.title}</h2>
              <span className="inline-block px-3 py-1 bg-blue-100 text-blue-800 text-sm rounded-full mb-3">
                {job.domain}
              </span>
              <p className="text-gray-600 mb-4">{job.description}</p>

              {/* Skills */}
              <div className="mb-4">
                <h3 className="font-semibold text-sm mb-2">Required Skills:</h3>
                <div className="flex flex-wrap gap-2">
                  {job.skills.map((skill, index) => (
                    <span
                      key={index}
                      className="px-3 py-1 bg-gray-100 text-gray-700 text-sm rounded-full"
                    >
                      {skill.name} ({skill.weight}/10)
                    </span>
                  ))}
                </div>
              </div>

              {/* Apply Button */}
              <Link
                to={`/apply/${job.id}`}
                state={{ job }}
                className="block w-full py-3 bg-blue-600 text-white text-center font-semibold rounded-lg hover:bg-blue-700"
              >
                Apply Now
              </Link>
            </div>
          ))}

          {filteredJobs.length === 0 && (
            <div className="col-span-2 text-center py-16 text-gray-500">
              No jobs found in this domain
            </div>
          )}
        </div>
      )}
    </div>
  );
};

export default Jobs;
