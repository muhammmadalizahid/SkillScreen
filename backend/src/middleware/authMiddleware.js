const { verifyJWT } = require('../services/authService');

/**
 * Middleware to authenticate requests using JWT
 */
function authenticateToken(req, res, next) {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1]; // Bearer TOKEN

  if (!token) {
    return res.status(401).json({ error: 'Access token required' });
  }

  try {
    const user = verifyJWT(token);
    req.user = user; // Attach user to request
    next();
  } catch (error) {
    return res.status(403).json({ error: 'Invalid or expired token' });
  }
}

/**
 * Optional authentication - doesn't fail if no token
 */
function optionalAuth(req, res, next) {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];

  if (token) {
    try {
      const user = verifyJWT(token);
      req.user = user;
    } catch (error) {
      // Token invalid but continue anyway
      req.user = null;
    }
  }

  next();
}

module.exports = {
  authenticateToken,
  optionalAuth,
};
