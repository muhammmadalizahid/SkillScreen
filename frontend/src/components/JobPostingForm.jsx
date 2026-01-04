import { useState, useEffect } from 'react';
import { getDomains } from '../services/api';

const JobPostingForm = ({ onSubmit, initialData = null, isEditing = false }) => {
  const [jobTitle, setJobTitle] = useState('');
  const [description, setDescription] = useState('');
  const [domainId, setDomainId] = useState('');
  const [experienceLevel, setExperienceLevel] = useState('');
  const [domains, setDomains] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchDomains = async () => {
      try {
        const domainsData = await getDomains();
        setDomains(domainsData);
      } catch (error) {
        console.error('Error fetching domains:', error);
        // Fallback domains if API fails
        setDomains([
          { id: '1', name: 'Web Development' },
          { id: '2', name: 'AI/ML' },
          { id: '3', name: 'Data Science' },
          { id: '4', name: 'Cybersecurity' },
          { id: '5', name: 'DevOps' }
        ]);
      } finally {
        setLoading(false);
      }
    };
    fetchDomains();
  }, []);

  // Populate form when editing
  useEffect(() => {
    if (initialData) {
      setJobTitle(initialData.title || '');
      setDescription(initialData.description || '');
      setDomainId(initialData.domain_id?.toString() || '');
      setExperienceLevel(initialData.experience_level || '');
    }
  }, [initialData]);

  const handleSubmit = (e) => {
    e.preventDefault();
    
    const jobData = {
      title: jobTitle,
      description,
      experience_level: experienceLevel,
      domain_id: domainId
    };

    onSubmit(jobData);
  };

  return (
    <div className="min-h-screen bg-[#f3f2ef]">
      <div className="container mx-auto px-8 py-10">
        <div className="max-w-3xl mx-auto bg-white rounded-lg border border-gray-200 shadow-lg p-8">
          <h2 className="text-3xl font-bold text-gray-900 mb-3">
            {isEditing ? 'Edit Job Posting' : 'Post a New Job'}
          </h2>
          <p className="text-sm text-gray-600 mb-8 pb-6 border-b border-gray-200">
            {isEditing 
              ? 'Update the job details below.' 
              : 'Fill in the basic job details below.'}
          </p>
          
          <form onSubmit={handleSubmit} className="space-y-6">
            {/* Job Title */}
            <div>
              <label className="block text-sm font-semibold text-gray-900 mb-2">
                Job Title <span className="text-red-500">*</span>
              </label>
              <input
                type="text"
                value={jobTitle}
                onChange={(e) => setJobTitle(e.target.value)}
                placeholder="e.g., Senior Frontend Developer"
                className="w-full px-4 py-3 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2] focus:ring-2 focus:ring-[#0a66c2] focus:ring-opacity-20 transition-all"
                required
              />
            </div>

            {/* Domain */}
            <div>
              <label className="block text-sm font-semibold text-gray-900 mb-2">
                Domain <span className="text-red-500">*</span>
              </label>
              <select
                value={domainId}
                onChange={(e) => setDomainId(e.target.value)}
                className="w-full px-4 py-3 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2] focus:ring-2 focus:ring-[#0a66c2] focus:ring-opacity-20 transition-all"
                required
                disabled={loading}
              >
                <option value="">{loading ? 'Loading domains...' : 'Select Domain'}</option>
                {domains.map(d => (
                  <option key={d.id} value={d.id}>{d.name}</option>
                ))}
              </select>
            </div>

            {/* Experience Level */}
            <div>
              <label className="block text-sm font-semibold text-gray-900 mb-2">Experience Level</label>
              <select
                value={experienceLevel}
                onChange={(e) => setExperienceLevel(e.target.value)}
                className="w-full px-4 py-3 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2] focus:ring-2 focus:ring-[#0a66c2] focus:ring-opacity-20 transition-all"
              >
                <option value="">Select Level</option>
                <option value="Entry Level">Entry Level</option>
                <option value="Mid Level">Mid Level</option>
                <option value="Senior Level">Senior Level</option>
              </select>
            </div>

            {/* Description */}
            <div>
              <label className="block text-sm font-semibold text-gray-900 mb-2">
                Job Description <span className="text-red-500">*</span>
              </label>
              <textarea
                value={description}
                onChange={(e) => setDescription(e.target.value)}
                placeholder="Describe the role, responsibilities, and requirements..."
                className="w-full px-4 py-3 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2] focus:ring-2 focus:ring-[#0a66c2] focus:ring-opacity-20 transition-all resize-none"
                rows="6"
                required
              />
            </div>

            {/* Submit */}
            <div className="pt-4">
              <button
                type="submit"
                className="w-full py-3.5 bg-[#0a66c2] text-white text-sm font-semibold rounded-lg hover:bg-[#004182] shadow-md hover:shadow-lg transition-all"
              >
                {isEditing ? 'Update Job' : 'Post Job'}
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
};

export default JobPostingForm;

