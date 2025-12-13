const axios = require('axios');
require('dotenv').config();

const GEMINI_API_KEY = process.env.GEMINI_API_KEY;
const GEMINI_API_URL = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent';

// Call Gemini API
const callGeminiAPI = async (prompt) => {
  try {
    if (!GEMINI_API_KEY || GEMINI_API_KEY === 'your_gemini_api_key') {
      console.warn('⚠️  Gemini API key not configured, using fallback responses');
      throw new Error('Gemini API key not configured');
    }

    const response = await axios.post(
      `${GEMINI_API_URL}?key=${GEMINI_API_KEY}`,
      {
        contents: [{
          parts: [{
            text: prompt
          }]
        }]
      },
      {
        headers: {
          'Content-Type': 'application/json'
        }
      }
    );

    const text = response.data.candidates[0]?.content?.parts[0]?.text;
    return text;
  } catch (error) {
    console.error('Gemini API error:', error.message);
    throw error;
  }
};

// Log configuration status on startup
if (GEMINI_API_KEY && GEMINI_API_KEY !== 'your_gemini_api_key') {
  console.log('✅ Gemini API configured');
} else {
  console.log('📝 Running without Gemini API (using fallback responses)');
  console.log('💡 To enable AI features: Add GEMINI_API_KEY to .env');
}

module.exports = {
  callGeminiAPI,
  GEMINI_API_KEY
};
