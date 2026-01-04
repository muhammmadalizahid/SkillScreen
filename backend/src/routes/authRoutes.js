const express = require('express');
const { verifyGoogleToken, generateJWT } = require('../services/authService');
const supabase = require('../config/db');
const { authenticateToken } = require('../middleware/authMiddleware');

const router = express.Router();

/**
 * POST /api/auth/google
 * Authenticate user with Google OAuth token
 */
router.post('/google', async (req, res) => {
  try {
    const { token } = req.body;

    if (!token) {
      return res.status(400).json({ error: 'Google token required' });
    }

    // Verify Google token
    const googleUser = await verifyGoogleToken(token);

    if (!googleUser.emailVerified) {
      return res.status(400).json({ error: 'Email not verified by Google' });
    }

    // Check if user exists in database
    const { data: existingUser, error: fetchError } = await supabase
      .from('users')
      .select('*')
      .eq('google_id', googleUser.googleId)
      .single();

    let user;

    if (existingUser) {
      // Update last login
      const { data: updatedUser, error: updateError } = await supabase
        .from('users')
        .update({ last_login: new Date().toISOString() })
        .eq('id', existingUser.id)
        .select()
        .single();

      if (updateError) throw updateError;
      user = updatedUser;
    } else {
      // Create new user
      const { data: newUser, error: insertError } = await supabase
        .from('users')
        .insert([
          {
            google_id: googleUser.googleId,
            email: googleUser.email,
            name: googleUser.name,
            picture: googleUser.picture,
          },
        ])
        .select()
        .single();

      if (insertError) throw insertError;
      user = newUser;
    }

    // Generate JWT
    const jwtToken = generateJWT(user);

    res.json({
      success: true,
      token: jwtToken,
      user: {
        id: user.id,
        email: user.email,
        name: user.name,
        picture: user.picture,
      },
    });
  } catch (error) {
    console.error('Google auth error:', error);
    res.status(500).json({ error: error.message || 'Authentication failed' });
  }
});

/**
 * GET /api/auth/me
 * Get current user profile
 */
router.get('/me', authenticateToken, async (req, res) => {
  try {
    const { data: user, error } = await supabase
      .from('users')
      .select('id, email, name, picture, created_at')
      .eq('id', req.user.id)
      .single();

    if (error) throw error;

    if (!user) {
      return res.status(404).json({ error: 'User not found' });
    }

    res.json({ success: true, user });
  } catch (error) {
    console.error('Get user error:', error);
    res.status(500).json({ error: 'Failed to fetch user profile' });
  }
});

/**
 * POST /api/auth/logout
 * Logout user (client should remove token)
 */
router.post('/logout', authenticateToken, (req, res) => {
  // With JWT, logout is handled client-side by removing the token
  // This endpoint is here for consistency
  res.json({ success: true, message: 'Logged out successfully' });
});

module.exports = router;
