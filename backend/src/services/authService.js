const { OAuth2Client } = require('google-auth-library');
const jwt = require('jsonwebtoken');

const client = new OAuth2Client(process.env.GOOGLE_CLIENT_ID);

/**
 * Verify Google OAuth token
 * @param {string} token - Google ID token
 * @returns {Promise<Object>} User data from Google
 */
async function verifyGoogleToken(token) {
  try {
    const ticket = await client.verifyIdToken({
      idToken: token,
      audience: process.env.GOOGLE_CLIENT_ID,
    });
    
    const payload = ticket.getPayload();
    
    return {
      googleId: payload.sub,
      email: payload.email,
      name: payload.name,
      picture: payload.picture,
      emailVerified: payload.email_verified,
    };
  } catch (error) {
    console.error('Error verifying Google token:', error);
    throw new Error('Invalid Google token');
  }
}

/**
 * Generate JWT token for authenticated user
 * @param {Object} user - User data
 * @returns {string} JWT token
 */
function generateJWT(user) {
  const payload = {
    id: user.id,
    email: user.email,
    name: user.name,
  };
  
  return jwt.sign(payload, process.env.JWT_SECRET, {
    expiresIn: '7d', // Token valid for 7 days
  });
}

/**
 * Verify JWT token
 * @param {string} token - JWT token
 * @returns {Object} Decoded token payload
 */
function verifyJWT(token) {
  try {
    return jwt.verify(token, process.env.JWT_SECRET);
  } catch (error) {
    throw new Error('Invalid or expired token');
  }
}

module.exports = {
  verifyGoogleToken,
  generateJWT,
  verifyJWT,
};
