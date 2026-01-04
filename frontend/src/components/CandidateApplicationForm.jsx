import { useState } from 'react';

const CandidateApplicationForm = ({ job, onSubmit }) => {
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();

    const applicationData = {
      jobId: job.id,
      candidateName: name,
      candidateEmail: email,
      timestamp: new Date().toISOString()
    };

    onSubmit(applicationData);
  };

  return (
    <div className="max-w-4xl mx-auto bg-white rounded-lg border border-gray-200 shadow-lg p-8">
      <h2 className="text-3xl font-bold text-gray-900 mb-2">Apply for {job.title}</h2>
      <p className="text-sm text-gray-600 mb-6">Please fill in your details to proceed with the application</p>
      
      <div className="mb-8 p-5 bg-[#e7f3ff] rounded-lg border border-[#0a66c2] border-opacity-20">
        <h3 className="font-semibold text-sm text-gray-900 mb-3">Job Details</h3>
        <p className="text-sm text-gray-700 mb-3 leading-relaxed">{job.description}</p>
        <div className="flex items-center gap-4 text-sm">
          <span className="font-medium text-gray-900">Domain:</span>
          <span className="px-3 py-1 bg-white rounded-full text-[#0a66c2] font-medium text-xs border border-[#0a66c2]">
            {job.domain}
          </span>
        </div>
      </div>

      <form onSubmit={handleSubmit} className="space-y-6">
        {/* Personal Information */}
        <div className="bg-gray-50 p-6 rounded-lg border border-gray-200">
          <h3 className="text-lg font-semibold text-gray-900 mb-4">Personal Information</h3>
          
          <div className="space-y-4">
            <div>
              <label className="block text-sm font-semibold text-gray-900 mb-2">
                Full Name <span className="text-red-500">*</span>
              </label>
              <input
                type="text"
                value={name}
                onChange={(e) => setName(e.target.value)}
                placeholder="John Doe"
                className="w-full px-4 py-3 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2] focus:ring-2 focus:ring-[#0a66c2] focus:ring-opacity-20 transition-all bg-white"
                required
              />
            </div>

            <div>
              <label className="block text-sm font-semibold text-gray-900 mb-2">
                Email Address <span className="text-red-500">*</span>
              </label>
              <input
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                placeholder="john.doe@example.com"
                className="w-full px-4 py-3 border border-gray-300 rounded-lg text-sm focus:outline-none focus:border-[#0a66c2] focus:ring-2 focus:ring-[#0a66c2] focus:ring-opacity-20 transition-all bg-white"
                required
              />
            </div>
          </div>
        </div>

        <div className="border-t border-gray-200 pt-6">
          <h3 className="text-lg font-semibold text-gray-900 mb-3">Next Steps</h3>
          <p className="text-sm text-gray-600 mb-5 leading-relaxed">
            After submitting your application, you'll immediately proceed to an MCQ-based assessment test to evaluate your skills for this position.
          </p>
          <div className="bg-[#e7f3ff] border border-blue-200 rounded-lg p-5">
            <p className="text-sm text-gray-700">
              Assessment will cover <span className="font-semibold">{job.domain}</span> domain knowledge.
            </p>
          </div>
        </div>

        {/* Submit */}
        <button
          type="submit"
          className="w-full py-4 bg-[#0a66c2] text-white text-base font-semibold rounded-lg hover:bg-[#004182] shadow-md hover:shadow-lg transition-all flex items-center justify-center gap-2"
        >
          Submit Application & Start Assessment
        </button>
      </form>
    </div>
  );
};

export default CandidateApplicationForm;

