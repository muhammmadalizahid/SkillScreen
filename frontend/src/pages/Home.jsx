import { Link } from 'react-router-dom';

const Home = () => {
  return (
    <div className="min-h-screen bg-white">
      {/* Hero Section */}
      <div className="bg-[#f3f2ef] border-b border-gray-200">
        <div className="container mx-auto px-8 py-20">
          <div className="max-w-4xl mx-auto text-center">
            <h1 className="text-6xl font-extrabold mb-6 text-gray-900 leading-tight">
              SkillScreen
            </h1>
            <p className="text-3xl text-[#0a66c2] mb-4 font-semibold">
              Professional Candidate Screening Platform
            </p>
            <p className="text-lg text-gray-600 mb-12 max-w-2xl mx-auto leading-relaxed">
              Streamline your hiring process with data structure-driven candidate evaluation and intelligent skill assessment tools powered by AI.
            </p>
            
            <div className="flex gap-6 justify-center">
              <Link
                to="/jobs"
                className="px-8 py-4 bg-[#0a66c2] text-white font-semibold text-base rounded-lg shadow-lg hover:bg-[#004182] hover:shadow-xl transition-all transform hover:-translate-y-1"
              >
                Browse Jobs
              </Link>
              <Link
                to="/dashboard"
                className="px-8 py-4 bg-white text-[#0a66c2] font-semibold text-base rounded-lg border-2 border-[#0a66c2] shadow-md hover:bg-[#f3f2ef] hover:shadow-lg transition-all transform hover:-translate-y-1"
              >
                Recruiter Dashboard
              </Link>
            </div>
          </div>
        </div>
      </div>

      {/* Features */}
      <div className="container mx-auto px-8 py-20 bg-white">
        <h2 className="text-4xl font-bold text-gray-900 mb-4 text-center">Platform Capabilities</h2>
        <p className="text-center text-gray-600 mb-12 max-w-2xl mx-auto">
          Built with custom data structures for optimal performance and scalability
        </p>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div className="bg-white p-8 rounded-lg border-2 border-gray-200 hover:border-[#0a66c2] hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2">
            <h3 className="text-xl font-bold mb-4 text-gray-900">Skills Management</h3>
            <p className="text-sm text-gray-600 leading-relaxed">
              Job requirements organized using linked list data structures for efficient skill tracking and validation.
            </p>
          </div>

          <div className="bg-white p-8 rounded-lg border-2 border-gray-200 hover:border-[#0a66c2] hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2">
            <h3 className="text-xl font-bold mb-4 text-gray-900">Candidate Ranking</h3>
            <p className="text-sm text-gray-600 leading-relaxed">
              Automated candidate ranking using max-heap algorithms for optimal top-N selection and comparison.
            </p>
          </div>

          <div className="bg-white p-8 rounded-lg border-2 border-gray-200 hover:border-[#0a66c2] hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2">
            <h3 className="text-xl font-bold mb-4 text-gray-900">Database-Driven Questions</h3>
            <p className="text-sm text-gray-600 leading-relaxed">
              Domain-based technical questions delivered from a structured database with difficulty levels.
            </p>
          </div>

          <div className="bg-white p-8 rounded-lg border-2 border-gray-200 hover:border-[#0a66c2] hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2">
            <h3 className="text-xl font-bold mb-4 text-gray-900">Assessment Delivery</h3>
            <p className="text-sm text-gray-600 leading-relaxed">
              Technical questions delivered via queue-based system maintaining proper sequence and fairness.
            </p>
          </div>

          <div className="bg-white p-8 rounded-lg border-2 border-gray-200 hover:border-[#0a66c2] hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2">
            <h3 className="text-xl font-bold mb-4 text-gray-900">Answer Management</h3>
            <p className="text-sm text-gray-600 leading-relaxed">
              Stack-based answer tracking enables candidates to review and modify responses during assessment.
            </p>
          </div>

          <div className="bg-white p-8 rounded-lg border-2 border-gray-200 hover:border-[#0a66c2] hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2">
            <h3 className="text-xl font-bold mb-4 text-gray-900">Smart Job Recommendations</h3>
            <p className="text-sm text-gray-600 leading-relaxed">
              Graph-based job network finds similar opportunities across domains using breadth-first search algorithms.
            </p>
          </div>
        </div>
      </div>

      {/* Domains */}
      <div className="bg-[#f3f2ef] border-t border-b border-gray-200">
        <div className="container mx-auto px-8 py-20">
          <h2 className="text-4xl font-bold text-gray-900 mb-4 text-center">Supported Technical Domains</h2>
          <p className="text-center text-gray-600 mb-12 max-w-2xl mx-auto">
            Comprehensive coverage across major technology fields
          </p>
          <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4 max-w-5xl mx-auto">
            {[
              'Web Development',
              'Software Engineering',
              'AI/ML',
              'Cybersecurity',
              'DevOps',
              'Data Science'
            ].map((domain) => (
              <div
                key={domain}
                className="p-6 bg-white rounded-lg border-2 border-gray-200 text-center hover:border-[#0a66c2] hover:shadow-lg transition-all duration-300 transform hover:-translate-y-1"
              >
                <div className="text-sm font-semibold text-gray-800">{domain}</div>
              </div>
            ))}
          </div>
        </div>
      </div>

      {/* Tech Stack */}
      <div className="container mx-auto px-8 py-20 bg-white">
        <h2 className="text-4xl font-bold text-gray-900 mb-4 text-center">Technology Stack</h2>
        <p className="text-center text-gray-600 mb-12 max-w-2xl mx-auto">
          Built with modern, production-ready technologies
        </p>
        <div className="flex flex-wrap gap-4 justify-center max-w-4xl mx-auto">
          {[
            'React.js',
            'Node.js',
            'Express',
            'PostgreSQL',
            'Supabase',
            'Tailwind CSS'
          ].map((tech) => (
            <span
              key={tech}
              className="px-6 py-3 bg-white rounded-lg border-2 border-gray-300 text-sm font-semibold text-gray-700 transition-all duration-300 hover:border-[#0a66c2] hover:shadow-md transform hover:-translate-y-1"
            >
              {tech}
            </span>
          ))}
        </div>
        <div className="mt-12 text-center">
          <p className="text-sm font-semibold text-gray-700 mb-3">Custom Data Structures</p>
          <div className="flex flex-wrap gap-3 justify-center">
            {['LinkedList', 'Stack', 'Queue', 'MaxHeap'].map((ds) => (
              <span
                key={ds}
                className="px-4 py-2 bg-[#0a66c2] text-white text-xs font-bold rounded-lg shadow-md"
              >
                {ds}
              </span>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
};

export default Home;
