import { BrowserRouter as Router, Routes, Route, Link, useLocation } from 'react-router-dom';
import { GoogleOAuthProvider } from '@react-oauth/google';
import { AuthProvider, useAuth } from './context/AuthContext';
import PrivateRoute from './components/PrivateRoute';
import Home from './pages/Home';
import Jobs from './pages/Jobs';
import Apply from './pages/Apply';
import Dashboard from './pages/Dashboard';
import Login from './pages/Login';

const Navigation = () => {
  const location = useLocation();
  const { isAuthenticated, user, logout } = useAuth();
  
  const isActive = (path) => {
    if (path === '/') return location.pathname === '/';
    return location.pathname.startsWith(path);
  };

  const handleLogout = () => {
    logout();
    window.location.href = '/login';
  };
  
  return (
    <nav className="bg-white border-b border-gray-300 shadow-sm sticky top-0 z-50">
      <div className="container mx-auto px-8 py-4">
        <div className="flex justify-between items-center">
          <Link to="/" className="text-2xl font-bold text-[#0a66c2] hover:text-[#004182] transition-colors">
            SkillScreen
          </Link>
          <div className="flex items-center gap-1">
            {isAuthenticated ? (
              <>
                <Link
                  to="/"
                  className={`px-4 py-2 text-sm font-medium rounded transition-colors ${
                    isActive('/') && !isActive('/jobs') && !isActive('/dashboard')
                      ? 'text-[#0a66c2] bg-[#e7f3ff]'
                      : 'text-gray-700 hover:text-gray-900 hover:bg-gray-50'
                  }`}
                >
                  Home
                </Link>
                <Link
                  to="/jobs"
                  className={`px-4 py-2 text-sm font-medium rounded transition-colors ${
                    isActive('/jobs') || isActive('/apply')
                      ? 'text-[#0a66c2] bg-[#e7f3ff]'
                      : 'text-gray-700 hover:text-gray-900 hover:bg-gray-50'
                  }`}
                >
                  Jobs
                </Link>
                <Link
                  to="/dashboard"
                  className={`px-4 py-2 text-sm font-medium rounded transition-colors ${
                    isActive('/dashboard')
                      ? 'text-[#0a66c2] bg-[#e7f3ff]'
                      : 'text-gray-700 hover:text-gray-900 hover:bg-gray-50'
                  }`}
                >
                  Dashboard
                </Link>
                <div className="ml-4 flex items-center gap-3 pl-4 border-l border-gray-300">
                  <span className="text-sm font-medium text-gray-700">{user?.name}</span>
                  <button
                    onClick={handleLogout}
                    className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-gray-900 hover:bg-gray-50 rounded transition-colors"
                  >
                    Logout
                  </button>
                </div>
              </>
            ) : (
              <Link
                to="/login"
                className="px-4 py-2 text-sm font-medium text-white bg-[#0a66c2] hover:bg-[#004182] rounded transition-colors"
              >
                Sign In
              </Link>
            )}
          </div>
        </div>
      </div>
    </nav>
  );
};

function App() {
  const googleClientId = import.meta.env.VITE_GOOGLE_CLIENT_ID;

  return (
    <GoogleOAuthProvider clientId={googleClientId}>
      <AuthProvider>
        <Router>
          <div className="min-h-screen bg-[#f3f2ef]">
            <Navigation />

            {/* Routes */}
            <Routes>
              <Route path="/login" element={<Login />} />
              <Route path="/" element={<Home />} />
              <Route path="/jobs" element={
                <PrivateRoute>
                  <Jobs />
                </PrivateRoute>
              } />
              <Route path="/apply/:jobId" element={
                <PrivateRoute>
                  <Apply />
                </PrivateRoute>
              } />
              <Route path="/dashboard" element={
                <PrivateRoute>
                  <Dashboard />
                </PrivateRoute>
              } />
            </Routes>

          {/* Footer */}
          <footer className="bg-white border-t border-gray-300 py-12 mt-20">
            <div className="container mx-auto px-8">
              <div className="max-w-6xl mx-auto">
                <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mb-8">
                  <div>
                    <h3 className="text-lg font-bold text-[#0a66c2] mb-3">SkillScreen</h3>
                    <p className="text-sm text-gray-600 leading-relaxed">
                      Professional candidate screening platform powered by custom data structures and AI.
                    </p>
                  </div>
                  <div>
                    <h4 className="text-sm font-semibold text-gray-900 mb-3">Quick Links</h4>
                    <div className="space-y-2">
                      <Link to="/" className="block text-sm text-gray-600 hover:text-[#0a66c2]">Home</Link>
                      <Link to="/jobs" className="block text-sm text-gray-600 hover:text-[#0a66c2]">Browse Jobs</Link>
                      <Link to="/dashboard" className="block text-sm text-gray-600 hover:text-[#0a66c2]">Recruiter Dashboard</Link>
                    </div>
                  </div>
                  <div>
                    <h4 className="text-sm font-semibold text-gray-900 mb-3">Technology Stack</h4>
                    <p className="text-xs text-gray-600 leading-relaxed">
                      React • Node.js • Express • PostgreSQL • Supabase • Tailwind CSS
                    </p>
                    <p className="text-xs text-gray-600 mt-2">
                      Custom DS: LinkedList, Stack, Queue, MaxHeap
                    </p>
                  </div>
                </div>
                <div className="border-t border-gray-200 pt-6 text-center">
                  <p className="text-xs text-gray-500">
                    © 2025 SkillScreen. Built for DSA Final Project.
                  </p>
                </div>
              </div>
            </div>
          </footer>
        </div>
      </Router>
    </AuthProvider>
    </GoogleOAuthProvider>
  );
}

export default App;
