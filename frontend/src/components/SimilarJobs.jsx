import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { getSimilarJobs } from '../services/api';

const SimilarJobs = ({ jobId, currentJobTitle }) => {
  const [similarJobs, setSimilarJobs] = useState([]);
  const [loading, setLoading] = useState(true);
  const navigate = useNavigate();

  useEffect(() => {
    const fetchSimilarJobs = async () => {
      try {
        setLoading(true);
        const jobs = await getSimilarJobs(jobId, 5, 2); // Get 5 jobs within depth 2
        setSimilarJobs(jobs);
      } catch (error) {
        console.error('Error fetching similar jobs:', error);
      } finally {
        setLoading(false);
      }
    };

    if (jobId) {
      fetchSimilarJobs();
    }
  }, [jobId]);

  if (loading) {
    return (
      <div className="bg-white rounded-lg border border-gray-200 shadow-sm p-6">
        <h3 className="text-lg font-bold text-gray-900 mb-4">Similar Jobs You Might Like</h3>
        <div className="space-y-3">
          {[1, 2, 3].map((i) => (
            <div key={i} className="animate-pulse">
              <div className="h-4 bg-gray-200 rounded w-3/4 mb-2"></div>
              <div className="h-3 bg-gray-100 rounded w-1/2"></div>
            </div>
          ))}
        </div>
      </div>
    );
  }

  if (!similarJobs || similarJobs.length === 0) {
    return null;
  }

  const handleJobClick = (job) => {
    navigate(`/apply/${job.id}`, { state: { job } });
    window.scrollTo(0, 0);
  };

  return (
    <div className="bg-white rounded-lg border border-gray-200 shadow-sm p-6">
      <div className="flex items-center gap-2 mb-4">
        <svg className="w-5 h-5 text-[#0a66c2]" fill="currentColor" viewBox="0 0 20 20">
          <path fillRule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z" clipRule="evenodd" />
        </svg>
        <h3 className="text-lg font-bold text-gray-900">Similar Jobs You Might Like</h3>
      </div>
      
      <p className="text-xs text-gray-500 mb-4">
        Based on domain relationships using Graph BFS • Same domain or related fields
      </p>

      <div className="space-y-3">
        {similarJobs.map((job) => (
          <div
            key={job.id}
            onClick={() => handleJobClick(job)}
            className="group p-4 rounded-lg border border-gray-200 hover:border-[#0a66c2] hover:bg-blue-50 transition-all cursor-pointer"
          >
            <div className="flex items-start justify-between gap-3">
              <div className="flex-1 min-w-0">
                <h4 className="text-sm font-semibold text-gray-900 group-hover:text-[#0a66c2] transition-colors truncate mb-1">
                  {job.title}
                </h4>
                
                <div className="flex items-center gap-2 text-xs text-gray-600 mb-2">
                  {job.domains?.name && (
                    <span className="px-2 py-1 bg-gray-100 rounded text-xs font-medium">
                      {job.domains.name}
                    </span>
                  )}
                  {job.location && (
                    <span className="flex items-center gap-1">
                      <svg className="w-3 h-3" fill="currentColor" viewBox="0 0 20 20">
                        <path fillRule="evenodd" d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z" clipRule="evenodd" />
                      </svg>
                      {job.location}
                    </span>
                  )}
                </div>

                {job.description && (
                  <p className="text-xs text-gray-600 line-clamp-2">
                    {job.description}
                  </p>
                )}
              </div>

              {job.similarity && (
                <div className="flex-shrink-0">
                  <div className="flex items-center gap-1 text-xs text-[#0a66c2] font-semibold">
                    <svg className="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                      <path fillRule="evenodd" d="M12.395 2.553a1 1 0 00-1.45-.385c-.345.23-.614.558-.822.88-.214.33-.403.713-.57 1.116-.334.804-.614 1.768-.84 2.734a31.365 31.365 0 00-.613 3.58 2.64 2.64 0 01-.945-1.067c-.328-.68-.398-1.534-.398-2.654A1 1 0 005.05 6.05 6.981 6.981 0 003 11a7 7 0 1011.95-4.95c-.592-.591-.98-.985-1.348-1.467-.363-.476-.724-1.063-1.207-2.03zM12.12 15.12A3 3 0 017 13s.879.5 2.5.5c0-1 .5-4 1.25-4.5.5 1 .786 1.293 1.371 1.879A2.99 2.99 0 0113 13a2.99 2.99 0 01-.879 2.121z" clipRule="evenodd" />
                    </svg>
                    <span>{Math.round(job.similarity.relevance * 20)}% match</span>
                  </div>
                </div>
              )}
            </div>
          </div>
        ))}
      </div>

      <div className="mt-4 pt-4 border-t border-gray-200">
        <button
          onClick={() => navigate('/jobs')}
          className="w-full py-2 text-sm font-semibold text-[#0a66c2] hover:bg-blue-50 rounded-lg transition-colors"
        >
          View All Jobs
        </button>
      </div>
    </div>
  );
};

export default SimilarJobs;
