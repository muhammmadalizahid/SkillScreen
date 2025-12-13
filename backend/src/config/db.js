const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_KEY;

let supabase = null;

// Only create Supabase client if valid credentials are provided
if (supabaseUrl && supabaseKey && supabaseUrl !== 'your_supabase_project_url') {
  try {
    supabase = createClient(supabaseUrl, supabaseKey);
    console.log('✅ Supabase connected successfully');
  } catch (error) {
    console.warn('⚠️  Supabase connection failed:', error.message);
    console.warn('📦 Falling back to in-memory storage (mock data)');
  }
} else {
  console.log('📦 Running in mock mode (no Supabase configured)');
  console.log('💡 To use database: Add SUPABASE_URL and SUPABASE_KEY to .env');
}

module.exports = supabase;
