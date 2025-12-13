import { Link } from 'react-router-dom';

const Home = () => {
  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-purple-50">
      {/* Hero Section */}
      <div className="container mx-auto px-4 py-16">
        <div className="text-center mb-16">
          <h1 className="text-6xl font-bold mb-4 bg-gradient-to-r from-blue-600 to-purple-600 bg-clip-text text-transparent">
            SkillScreen
          </h1>
          <p className="text-2xl text-gray-600 mb-8">
            AI-Powered CS Job Screening Platform
          </p>
          <p className="text-lg text-gray-500 max-w-2xl mx-auto mb-12">
            Leveraging advanced data structures and AI to match the best candidates with the right opportunities
          </p>
          
          <div className="flex gap-4 justify-center">
            <Link
              to="/jobs"
              className="px-8 py-4 bg-blue-600 text-white font-semibold rounded-lg hover:bg-blue-700 shadow-lg transform hover:scale-105 transition"
            >
              Browse Jobs
            </Link>
            <Link
              to="/dashboard"
              className="px-8 py-4 bg-purple-600 text-white font-semibold rounded-lg hover:bg-purple-700 shadow-lg transform hover:scale-105 transition"
            >
              Recruiter Dashboard
            </Link>
          </div>
        </div>

        {/* Features */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
          <div className="bg-white p-6 rounded-lg shadow-md">
            <div className="text-4xl mb-4">🔗</div>
            <h3 className="text-xl font-semibold mb-2">Linked List Skills</h3>
            <p className="text-gray-600">
              Job requirements organized using manually implemented linked lists for efficient skill management
            </p>
          </div>

          <div className="bg-white p-6 rounded-lg shadow-md">
            <div className="text-4xl mb-4">📊</div>
            <h3 className="text-xl font-semibold mb-2">Max-Heap Ranking</h3>
            <p className="text-gray-600">
              Candidates ranked using custom max-heap implementation for optimal top-N selection
            </p>
          </div>

          <div className="bg-white p-6 rounded-lg shadow-md">
            <div className="text-4xl mb-4">🔄</div>
            <h3 className="text-xl font-semibold mb-2">Graph Dependencies</h3>
            <p className="text-gray-600">
              Skill dependencies validated using graph algorithms (BFS/DFS) to ensure consistency
            </p>
          </div>

          <div className="bg-white p-6 rounded-lg shadow-md">
            <div className="text-4xl mb-4">📝</div>
            <h3 className="text-xl font-semibold mb-2">Queue-Based Testing</h3>
            <p className="text-gray-600">
              MCQ questions delivered via manually implemented FIFO queue structure
            </p>
          </div>

          <div className="bg-white p-6 rounded-lg shadow-md">
            <div className="text-4xl mb-4">↩️</div>
            <h3 className="text-xl font-semibold mb-2">Stack Undo Feature</h3>
            <p className="text-gray-600">
              Answer revision powered by custom stack implementation (LIFO)
            </p>
          </div>

          <div className="bg-white p-6 rounded-lg shadow-md">
            <div className="text-4xl mb-4">🤖</div>
            <h3 className="text-xl font-semibold mb-2">AI Integration</h3>
            <p className="text-gray-600">
              Gemini API generates MCQs and personalized feedback based on candidate performance
            </p>
          </div>
        </div>

        {/* Domains */}
        <div className="bg-white rounded-lg shadow-md p-8">
          <h2 className="text-3xl font-bold text-center mb-8">Supported CS Domains</h2>
          <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
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
                className="p-4 bg-gradient-to-br from-blue-50 to-purple-50 rounded-lg text-center font-medium hover:shadow-md transition"
              >
                {domain}
              </div>
            ))}
          </div>
        </div>

        {/* Tech Stack */}
        <div className="mt-16 text-center">
          <h2 className="text-3xl font-bold mb-8">Built With</h2>
          <div className="flex flex-wrap justify-center gap-4">
            {[
              'React.js',
              'Node.js',
              'Express',
              'PostgreSQL',
              'Supabase',
              'Gemini AI',
              'Tailwind CSS'
            ].map((tech) => (
              <span
                key={tech}
                className="px-4 py-2 bg-blue-100 text-blue-800 rounded-full font-medium"
              >
                {tech}
              </span>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
};

export default Home;
