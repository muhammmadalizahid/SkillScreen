const express = require('express');
const cors = require('cors');
const dotenv = require('dotenv');
const jobRoutes = require('./routes/jobRoutes');
const candidateRoutes = require('./routes/candidateRoutes');
const mcqRoutes = require('./routes/mcqRoutes');
const domainRoutes = require('./routes/domainRoutes');
const authRoutes = require('./routes/authRoutes');

// Load environment variables
dotenv.config();

// Initialize express app
const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Request logging middleware
app.use((req, res, next) => {
  console.log(`${req.method} ${req.path}`);
  next();
});

// Health check route
app.get('/health', (req, res) => {
  res.status(200).json({
    success: true,
    message: 'SkillScreen API is running',
    timestamp: new Date().toISOString()
  });
});

// API Routes
app.use('/api/auth', authRoutes);
app.use('/api/jobs', jobRoutes);
app.use('/api/applications', candidateRoutes);
app.use('/api/mcqs', mcqRoutes);
app.use('/api/domains', domainRoutes);

// Root route
app.get('/', (req, res) => {
  res.json({
    message: 'Welcome to SkillScreen API',
    version: '1.0.0',
    endpoints: {
      jobs: '/api/jobs',
      jobs: '/api/jobs',
      applications: '/api/applications',
      mcqs: '/api/mcqs',
      domains: '/api/domains'
    }
  });
});

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`✅ SkillScreen API server running on port ${PORT}`);
  console.log(`📊 Using manual data structures (LinkedList, Stack, Queue, MaxHeap)`);
  console.log(`📚 Question source: Database question_bank table`);
  console.log(`💾 Database: ${process.env.SUPABASE_URL ? 'Supabase (PostgreSQL)' : 'In-Memory (Mock)'}`);
});

module.exports = app;
