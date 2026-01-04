import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { getJobs } from '../services/api';
import { transformJobs } from '../utils/dataTransformers';
import BinarySearch from '../dsa/BinarySearch';
import HeapSort from '../dsa/HeapSort';

const Jobs = () => {
  const [jobs, setJobs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [filterDomain, setFilterDomain] = useState('');
  const [searchQuery, setSearchQuery] = useState('');
  const [sortBy, setSortBy] = useState('title');
  const [sortOrder, setSortOrder] = useState('asc');

  useEffect(() => {
    fetchJobs();
  }, []);

  const fetchJobs = async () => {
    try {
      setLoading(true);
      const data = await getJobs();
      const transformedJobs = transformJobs(Array.isArray(data) ? data : []);
      setJobs(transformedJobs);
    } catch (error) {
      console.error('Error fetching jobs:', error);
      setJobs([]);
    } finally {
      setLoading(false);
    }
  };

  const getFilteredAndSortedJobs = () => {
    let result = Array.isArray(jobs) ? jobs : [];

    // Filter by domain if selected
    if (filterDomain && filterDomain !== 'All') {
      result = result.filter(job => job.domain === filterDomain);
    }

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



  const domains = [
    'All',
    'Web Development',
    'Software Engineering',
    'AI/ML',
    'Cybersecurity',
    'DevOps',
    'Data Science'
  ];

  const filteredJobs = getFilteredAndSortedJobs();

  return (
    <div className="min-h-screen bg-[#f3f2ef]">
      <div className="container mx-auto px-8 py-10">
        <div className="mb-8">
          <h1 className="text-4xl font-bold text-gray-900 mb-2">Job Openings</h1>
          <p className="text-sm text-gray-600">Find your next opportunity</p>
        </div>

        {/* Domain Filter */}
        <div className="mb-8 bg-white p-6 rounded-lg border border-gray-200 shadow-sm">
          <h3 className="text-sm font-semibold text-gray-900 mb-4">Filter by Domain</h3>
          <div className="flex gap-3 flex-wrap">
            {domains.map((domain) => (
              <button
                key={domain}
                onClick={() => setFilterDomain(domain === 'All' ? '' : domain)}
                className={`px-5 py-2.5 text-sm font-medium rounded-full transition-all ${
                  (domain === 'All' && !filterDomain) || filterDomain === domain
                    ? 'bg-[#0a66c2] text-white shadow-md'
                    : 'bg-white text-gray-700 border border-gray-300 hover:border-[#0a66c2] hover:text-[#0a66c2]'
                }`}
              >
                {domain}
              </button>
            ))}
          </div>
        </div>

        {/* Search and Sort Controls */}
        <div className="bg-white p-6 rounded-lg border border-gray-200 shadow-sm mb-8">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
            {/* Search Bar */}
            <div className="md:col-span-2">
              <label className="block text-sm font-semibold text-gray-900 mb-2">
                Search Jobs
              </label>
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search by title, description, or domain..."
                className="w-full px-4 py-2.5 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2] focus:ring-1 focus:ring-[#0a66c2]"
              />
            </div>

            {/* Sort Controls */}
            <div className="grid grid-cols-2 gap-2">
              <div>
                <label className="block text-sm font-semibold text-gray-900 mb-2">
                  Sort By
                </label>
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
                <label className="block text-sm font-semibold text-gray-900 mb-2">
                  Order
                </label>
                <select
                  value={sortOrder}
                  onChange={(e) => setSortOrder(e.target.value)}
                  className="w-full px-3 py-2.5 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2]"
                >
                  {sortBy === 'created_at' ? (
                    <>
                      <option value="desc">Newest to Oldest</option>
                      <option value="asc">Oldest to Newest</option>
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

        {/* Jobs List */}
        {loading ? (
          <div className="text-center py-20">
            <div className="animate-spin border-4 border-gray-200 border-t-[#0a66c2] rounded-full h-16 w-16 mx-auto"></div>
            <p className="mt-6 text-base text-gray-600 font-medium">Loading amazing opportunities...</p>
          </div>
        ) : (
          <>
            {/* Results Count */}
            <div className="mb-4 text-sm text-gray-600">
              Showing <span className="font-semibold text-gray-900">{filteredJobs.length}</span> of <span className="font-semibold text-gray-900">{jobs.length}</span> jobs
            </div>
            
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {filteredJobs.map((job) => (
              <div
                key={job.id}
                className="bg-white rounded-lg border border-gray-200 p-6 hover:shadow-xl transition-all duration-300 hover:-translate-y-1 flex flex-col"
              >
                <div className="flex-1">
                  <div className="flex items-start justify-between mb-3">
                    <h2 className="text-xl font-bold text-gray-900 leading-tight flex-1">{job.title}</h2>
                  </div>
                  <span className="inline-block px-3 py-1.5 bg-[#e7f3ff] text-[#0a66c2] text-xs font-semibold rounded-full mb-4">
                    {job.domain}
                  </span>
                  <p className="text-sm text-gray-600 mb-5 leading-relaxed line-clamp-3">{job.description}</p>
                </div>

                {/* Apply Button */}
                <Link
                  to={`/apply/${job.id}`}
                  state={{ job }}
                  className="block w-full py-3 bg-[#0a66c2] text-white text-center text-sm font-semibold rounded-lg hover:bg-[#004182] shadow-md hover:shadow-lg transition-all"
                >
                  Apply Now →
                </Link>
              </div>
            ))}

            {filteredJobs.length === 0 && (
              <div className="col-span-full text-center py-20 bg-white rounded-lg border border-gray-200">
                <p className="text-lg font-semibold text-gray-900 mb-2">No jobs found</p>
                <p className="text-sm text-gray-600">Try adjusting your search or filter criteria</p>
              </div>
            )}
          </div>
          </>
        )}
      </div>
    </div>
  );
};

export default Jobs;
