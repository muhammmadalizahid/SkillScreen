import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { AuthProvider } from './context/AuthContext';
import Home from './pages/Home';
import Jobs from './pages/Jobs';
import Apply from './pages/Apply';
import Dashboard from './pages/Dashboard';

function App() {
  return (
    <AuthProvider>
      <Router>
        <div className="min-h-screen bg-gray-50">
          {/* Navigation */}
          <nav className="bg-white shadow-md">
            <div className="container mx-auto px-4 py-4">
              <div className="flex justify-between items-center">
                <a href="/" className="text-2xl font-bold text-blue-600">
                  SkillScreen
                </a>
                <div className="flex gap-6">
                  <a href="/" className="text-gray-700 hover:text-blue-600 font-medium">
                    Home
                  </a>
                  <a href="/jobs" className="text-gray-700 hover:text-blue-600 font-medium">
                    Jobs
                  </a>
                  <a href="/dashboard" className="text-gray-700 hover:text-blue-600 font-medium">
                    Dashboard
                  </a>
                </div>
              </div>
            </div>
          </nav>

          {/* Routes */}
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/jobs" element={<Jobs />} />
            <Route path="/apply/:jobId" element={<Apply />} />
            <Route path="/dashboard" element={<Dashboard />} />
          </Routes>

          {/* Footer */}
          <footer className="bg-gray-800 text-white py-8 mt-16">
            <div className="container mx-auto px-4 text-center">
              <p className="mb-2">
                SkillScreen - AI-Powered CS Job Screening Platform
              </p>
              <p className="text-sm text-gray-400">
                Built with manual data structures (LinkedList, Stack, Queue, MaxHeap, Graph, Tree)
              </p>
              <p className="text-sm text-gray-400 mt-2">
                Powered by React, Node.js, Express, PostgreSQL, Supabase & Gemini AI
              </p>
            </div>
          </footer>
        </div>
      </Router>
    </AuthProvider>
  );
}

export default App;
