// Transform database job structure to frontend format
export const transformJob = (dbJob) => {
  if (!dbJob) return null;

  return {
    id: dbJob.id,
    title: dbJob.title,
    description: dbJob.description,
    domain: dbJob.domains?.name || 'Unknown',
    domain_id: dbJob.domain_id,
    experience_level: dbJob.experience_level,
    skills: [],
    created_at: dbJob.created_at
  };
};

// Transform database application structure to frontend format
export const transformApplication = (dbApp) => {
  if (!dbApp) return null;

  // Get test results
  let testScore = null;
  let testPercentage = null;
  if (dbApp.test_results) {
    testScore = dbApp.test_results.correct_answers || 0;
    testPercentage = dbApp.test_results.percentage || 0;
  }

  return {
    id: dbApp.id,
    jobId: dbApp.job_id,
    candidateName: dbApp.candidates?.name || 'Unknown',
    candidateEmail: dbApp.candidates?.email || 'Unknown',
    testScore,
    testPercentage,
    timestamp: dbApp.applied_at,
    status: dbApp.status
  };
};

// Transform multiple jobs
export const transformJobs = (dbJobs) => {
  if (!Array.isArray(dbJobs)) return [];
  return dbJobs.map(transformJob);
};

// Transform multiple applications
export const transformApplications = (dbApps) => {
  if (!Array.isArray(dbApps)) return [];
  return dbApps.map(transformApplication);
};
