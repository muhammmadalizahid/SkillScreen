import { createContext, useState, useContext, useEffect } from 'react';

const AuthContext = createContext(null);

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // Check for existing JWT token and validate it
    const checkAuth = async () => {
      const token = localStorage.getItem('skillscreen_token');
      const storedUser = localStorage.getItem('skillscreen_user');
      
      // Load user from localStorage first for immediate display
      if (storedUser) {
        try {
          setUser(JSON.parse(storedUser));
        } catch (error) {
          console.error('Error parsing stored user:', error);
        }
      }
      
      if (token) {
        try {
          const response = await fetch(`${import.meta.env.VITE_API_BASE_URL}/auth/me`, {
            headers: {
              'Authorization': `Bearer ${token}`
            }
          });

          if (response.ok) {
            const data = await response.json();
            if (data.user) {
              setUser(data.user);
              // Update localStorage with fresh data
              localStorage.setItem('skillscreen_user', JSON.stringify(data.user));
            }
          } else {
            // Token invalid, clear it
            localStorage.removeItem('skillscreen_token');
            localStorage.removeItem('skillscreen_user');
            setUser(null);
          }
        } catch (error) {
          console.error('Auth check failed:', error);
          // Keep the user from localStorage if API fails
          if (!storedUser) {
            localStorage.removeItem('skillscreen_token');
            localStorage.removeItem('skillscreen_user');
            setUser(null);
          }
        }
      }
      
      setLoading(false);
    };

    checkAuth();
  }, []);

  const login = (token, userData) => {
    setUser(userData);
    localStorage.setItem('skillscreen_token', token);
    localStorage.setItem('skillscreen_user', JSON.stringify(userData));
  };

  const logout = async () => {
    const token = localStorage.getItem('skillscreen_token');
    
    // Call logout endpoint
    if (token) {
      try {
        await fetch(`${import.meta.env.VITE_API_BASE_URL}/auth/logout`, {
          method: 'POST',
          headers: {
            'Authorization': `Bearer ${token}`
          }
        });
      } catch (error) {
        console.error('Logout error:', error);
      }
    }

    setUser(null);
    localStorage.removeItem('skillscreen_token');
    localStorage.removeItem('skillscreen_user');
  };

  const getToken = () => {
    return localStorage.getItem('skillscreen_token');
  };

  const value = {
    user,
    loading,
    login,
    logout,
    getToken,
    isAuthenticated: !!user
  };

  return (
    <AuthContext.Provider value={value}>
      {!loading && children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error('useAuth must be used within AuthProvider');
  }
  return context;
};

export default AuthContext;
