const supabase = require('../config/db');

// ==================== DOMAINS ====================
const getAllDomains = async () => {
  if (!supabase) {
    return [
      { id: '1', name: 'Web Development', description: 'Frontend and backend web technologies' },
      { id: '2', name: 'AI/ML', description: 'Artificial Intelligence and Machine Learning' },
      { id: '3', name: 'Data Science', description: 'Data analysis and visualization' },
      { id: '4', name: 'Cybersecurity', description: 'Security and ethical hacking' },
      { id: '5', name: 'DevOps', description: 'Development and operations automation' }
    ];
  }

  try {
    const { data, error } = await supabase.from('domains').select('*');
    if (error) throw error;
    return data || [];
  } catch (err) {
    console.error('Database error in getAllDomains:', err);
    // Return fallback data on network error
    if (err.message && err.message.includes('fetch failed')) {
      console.warn('Network error - returning fallback domains');
      return [
        { id: '1', name: 'Web Development', description: 'Frontend and backend web technologies' },
        { id: '2', name: 'AI/ML', description: 'Artificial Intelligence and Machine Learning' },
        { id: '3', name: 'Data Science', description: 'Data analysis and visualization' },
        { id: '4', name: 'Cybersecurity', description: 'Security and ethical hacking' },
        { id: '5', name: 'DevOps', description: 'Development and operations automation' }
      ];
    }
    throw err;
  }
};

const createDomain = async (name, description) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('domains')
    .insert([{ name, description }])
    .select();
  
  if (error) throw error;
  return data[0];
};

// ==================== SKILLS ====================
const getSkillsByDomain = async (domainId) => {
  if (!supabase) {
    return [
      { id: '1', domain_id: domainId, name: 'JavaScript', description: 'Programming language' },
      { id: '2', domain_id: domainId, name: 'React', description: 'Frontend library' },
      { id: '3', domain_id: domainId, name: 'Node.js', description: 'Backend runtime' }
    ];
  }

  const { data, error } = await supabase
    .from('skills')
    .select('*')
    .eq('domain_id', domainId);
  
  if (error) throw error;
  return data;
};

const createSkill = async (domainId, name, description) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('skills')
    .insert([{ domain_id: domainId, name, description }])
    .select();
  
  if (error) throw error;
  return data[0];
};

// ==================== SKILL DEPENDENCIES ====================
const addSkillDependency = async (skillId, dependsOnSkillId) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('skill_dependencies')
    .insert([{ skill_id: skillId, depends_on_skill_id: dependsOnSkillId }])
    .select();
  
  if (error) throw error;
  return data[0];
};

const getSkillDependencies = async (skillId) => {
  if (!supabase) return [];
  
  const { data, error } = await supabase
    .from('skill_dependencies')
    .select('depends_on_skill_id, skills!depends_on_skill_id(name)')
    .eq('skill_id', skillId);
  
  if (error) throw error;
  return data;
};

// ==================== JOBS ====================
const createJob = async (jobData) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { title, description, experience_level, domain_id, user_id } = jobData;
  
  const { data, error } = await supabase
    .from('jobs')
    .insert([{ title, description, experience_level, domain_id, user_id }])
    .select();
  
  if (error) throw error;
  return data[0];
};

const getAllJobs = async () => {
  if (!supabase) {
    return [];
  }

  try {
    const { data, error } = await supabase
      .from('jobs')
      .select(`
        *,
        domains(name)
      `)
      .order('created_at', { ascending: false });
    
    if (error) throw error;
    return data || [];
  } catch (err) {
    console.error('Database error in getAllJobs:', err);
    // Return empty array on network error instead of crashing
    if (err.message && err.message.includes('fetch failed')) {
      console.warn('Network error - returning empty jobs list');
      return [];
    }
    throw err;
  }
};

const getJobsByUserId = async (userId) => {
  if (!supabase) {
    return [];
  }

  try {
    const { data, error } = await supabase
      .from('jobs')
      .select(`
        *,
        domains(name)
      `)
      .eq('user_id', userId);
    
    if (error) throw error;
    return data || [];
  } catch (err) {
    console.error('Database error in getJobsByUserId:', err);
    return [];
  }
};

const getJobById = async (jobId) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('jobs')
    .select(`
      *,
      domains(name)
    `)
    .eq('id', jobId)
    .single();
  
  if (error) throw error;
  return data;
};

const updateJob = async (jobId, jobData) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('jobs')
    .update({
      title: jobData.title,
      description: jobData.description,
      domain_id: jobData.domain_id
    })
    .eq('id', jobId)
    .select();
  
  if (error) throw error;
  return data[0];
};

const deleteJob = async (jobId) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { error } = await supabase
    .from('jobs')
    .delete()
    .eq('id', jobId);
  
  if (error) throw error;
  return true;
};

// Increment job view count
const incrementJobViews = async (jobId) => {
  if (!supabase) return;
  
  try {
    // Get current views
    const { data: job } = await supabase
      .from('jobs')
      .select('views')
      .eq('id', jobId)
      .single();
    
    if (job) {
      const newViews = (job.views || 0) + 1;
      await supabase
        .from('jobs')
        .update({ views: newViews })
        .eq('id', jobId);
    }
  } catch (error) {
    console.error('Error incrementing job views:', error);
  }
};

// Get job statistics
const getJobStatistics = async (jobId) => {
  if (!supabase) {
    return {
      views: 0,
      applicationsCount: 0,
      averageScore: 0
    };
  }
  
  try {
    // Get job views
    const { data: job } = await supabase
      .from('jobs')
      .select('views')
      .eq('id', jobId)
      .single();
    
    // Get applications count and average score
    const { data: applications } = await supabase
      .from('applications')
      .select('test_score')
      .eq('job_id', jobId);
    
    const applicationsCount = applications?.length || 0;
    const scores = applications?.filter(app => app.test_score !== null).map(app => app.test_score) || [];
    const averageScore = scores.length > 0 
      ? scores.reduce((sum, score) => sum + score, 0) / scores.length 
      : 0;
    
    return {
      views: job?.views || 0,
      applicationsCount,
      averageScore: Math.round(averageScore * 10) / 10 // Round to 1 decimal
    };
  } catch (error) {
    console.error('Error getting job statistics:', error);
    return {
      views: 0,
      applicationsCount: 0,
      averageScore: 0
    };
  }
};

// ==================== JOB SKILLS ====================
const addJobSkill = async (jobId, skillId, weight) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('job_skills')
    .insert([{ job_id: jobId, skill_id: skillId, weight }])
    .select();
  
  if (error) throw error;
  return data[0];
};

// ==================== CANDIDATES ====================
const createCandidate = async (name, email, user_id = null) => {
  if (!supabase) throw new Error('Database not configured');
  
  // Check if candidate exists by email
  const { data: existing } = await supabase
    .from('candidates')
    .select('*')
    .eq('email', email)
    .single();
  
  if (existing) {
    // Update user_id if provided and not set
    if (user_id && !existing.user_id) {
      const { data: updated, error: updateError } = await supabase
        .from('candidates')
        .update({ user_id })
        .eq('id', existing.id)
        .select();
      
      if (updateError) throw updateError;
      return updated[0];
    }
    return existing;
  }
  
  const { data, error } = await supabase
    .from('candidates')
    .insert([{ name, email, user_id }])
    .select();
  
  if (error) throw error;
  return data[0];
};

// ==================== APPLICATIONS ====================
const createApplication = async (candidateId, jobId) => {
  if (!supabase) throw new Error('Database not configured');
  
  // Check if application already exists
  const { data: existing } = await supabase
    .from('applications')
    .select('*')
    .eq('candidate_id', candidateId)
    .eq('job_id', jobId)
    .single();
  
  if (existing) {
    console.log('⚠️  Application already exists, returning existing application');
    return existing;
  }
  
  const { data, error } = await supabase
    .from('applications')
    .insert([{ candidate_id: candidateId, job_id: jobId }])
    .select();
  
  if (error) throw error;
  return data[0];
};

const getApplicationsByJob = async (jobId) => {
  if (!supabase) return [];
  
  const { data, error } = await supabase
    .from('applications')
    .select(`
      *,
      candidates(name, email),
      test_sessions(
        id,
        completed_at
      ),
      test_results(*)
    `)
    .eq('job_id', jobId);
  
  if (error) throw error;
  return data;
};

const getApplicationById = async (applicationId) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('applications')
    .select(`
      *,
      candidates(name, email),
      jobs(title, description),
      test_sessions(
        id,
        completed_at,
        mcqs(*)
      ),
      test_results(*)
    `)
    .eq('id', applicationId)
    .single();
  
  if (error) throw error;
  return data;
};

// ==================== TEST RESULTS ====================
const saveTestResult = async (applicationId, mcqScore, totalQuestions, correctAnswers, percentage) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('test_results')
    .insert([{
      application_id: applicationId,
      mcq_score: mcqScore,
      total_questions: totalQuestions,
      correct_answers: correctAnswers,
      percentage: percentage
    }])
    .select();
  
  if (error) throw error;
  return data[0];
};

// ==================== TEST SESSIONS ====================
const createTestSession = async (applicationId) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('test_sessions')
    .insert([{ application_id: applicationId }])
    .select();
  
  if (error) throw error;
  return data[0];
};

const completeTestSession = async (testSessionId) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('test_sessions')
    .update({ completed_at: new Date().toISOString() })
    .eq('id', testSessionId)
    .select();
  
  if (error) throw error;
  return data[0];
};

// ==================== MCQs ====================
const createMCQ = async (testSessionId, skillId, question, options, correctAnswer) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('mcqs')
    .insert([{
      test_session_id: testSessionId,
      skill_id: skillId,
      question,
      options,
      correct_answer: correctAnswer
    }])
    .select();
  
  if (error) throw error;
  return data[0];
};

const getMCQsByTestSession = async (testSessionId) => {
  if (!supabase) return [];
  
  const { data, error } = await supabase
    .from('mcqs')
    .select('*, skills(name)')
    .eq('test_session_id', testSessionId);
  
  if (error) throw error;
  return data;
};

// ==================== CANDIDATE ANSWERS ====================
const saveCandidateAnswer = async (mcqId, selectedAnswer, isCorrect) => {
  if (!supabase) throw new Error('Database not configured');
  
  const { data, error } = await supabase
    .from('candidate_answers')
    .insert([{ mcq_id: mcqId, selected_answer: selectedAnswer, is_correct: isCorrect }])
    .select();
  
  if (error) throw error;
  return data[0];
};

// Get all applications
const getAllApplications = async () => {
  if (!supabase) return [];
  
  const { data, error } = await supabase
    .from('applications')
    .select('*');
  
  if (error) throw error;
  return data || [];
};

// Get jobs by array of IDs
const getJobsByIds = async (jobIds) => {
  if (!supabase) return [];
  if (!jobIds || jobIds.length === 0) return [];
  
  const { data, error } = await supabase
    .from('jobs')
    .select(`
      *,
      domains(name)
    `)
    .in('id', jobIds);
  
  if (error) throw error;
  return data || [];
};



module.exports = {
  // Domains
  getAllDomains,
  createDomain,
  
  // Skills
  getSkillsByDomain,
  createSkill,
  
  // Skill Dependencies
  addSkillDependency,
  getSkillDependencies,
  
  // Jobs
  createJob,
  getAllJobs,
  getJobsByUserId,
  getJobById,
  getJobsByIds,
  updateJob,
  deleteJob,
  incrementJobViews,
  getJobStatistics,
  
  // Job Skills
  addJobSkill,
  
  // Candidates
  createCandidate,
  
  // Applications
  createApplication,
  getApplicationsByJob,
  getApplicationById,
  getAllApplications,
  
  // Test Sessions
  createTestSession,
  completeTestSession,
  
  // MCQs
  createMCQ,
  getMCQsByTestSession,
  
  // Candidate Answers
  saveCandidateAnswer,
  
  // Test Results
  saveTestResult
};
