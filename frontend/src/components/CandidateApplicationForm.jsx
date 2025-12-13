import { useState } from 'react';
import Graph from '../dsa/Graph';

const CandidateApplicationForm = ({ job, onSubmit }) => {
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');
  const [selfAssessment, setSelfAssessment] = useState({});
  const [validationError, setValidationError] = useState('');

  const handleScoreChange = (skillName, score) => {
    setSelfAssessment(prev => ({
      ...prev,
      [skillName]: parseInt(score)
    }));
  };

  const validateSkillDependencies = () => {
    // Use Graph to validate skill dependencies
    const skillGraph = new Graph();
    
    // Rebuild graph from job data
    if (job.skillGraph) {
      Object.keys(job.skillGraph).forEach(vertex => {
        skillGraph.addVertex(vertex);
        job.skillGraph[vertex].forEach(neighbor => {
          skillGraph.addEdge(vertex, neighbor);
        });
      });
    }

    // Validate: if a skill has high score, its dependencies should also have reasonable scores
    for (const skill of job.skills) {
      const dependencies = skillGraph.getNeighbors(skill.name);
      const skillScore = selfAssessment[skill.name] || 0;

      if (skillScore > 7) {
        // Check if dependencies have sufficient scores
        for (const dep of dependencies) {
          const depScore = selfAssessment[dep] || 0;
          if (depScore < 5) {
            return `Inconsistency detected: ${skill.name} (score: ${skillScore}) depends on ${dep} (score: ${depScore}). Dependency should have a reasonable score.`;
          }
        }
      }
    }

    return null;
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    // Validate skill dependencies using Graph
    const error = validateSkillDependencies();
    if (error) {
      setValidationError(error);
      return;
    }

    setValidationError('');

    const applicationData = {
      jobId: job.id,
      candidateName: name,
      candidateEmail: email,
      selfAssessment,
      timestamp: new Date().toISOString()
    };

    onSubmit(applicationData);
  };

  return (
    <div className="max-w-4xl mx-auto p-6 bg-white rounded-lg shadow-md">
      <h2 className="text-2xl font-bold mb-6">Apply for: {job.title}</h2>
      
      <div className="mb-6 p-4 bg-blue-50 rounded-lg">
        <h3 className="font-semibold mb-2">Job Details</h3>
        <p className="text-sm text-gray-700 mb-2">{job.description}</p>
        <p className="text-sm"><strong>Domain:</strong> {job.domain}</p>
      </div>

      <form onSubmit={handleSubmit} className="space-y-6">
        {/* Personal Information */}
        <div>
          <label className="block text-sm font-medium mb-2">Full Name</label>
          <input
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
            className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500"
            required
          />
        </div>

        <div>
          <label className="block text-sm font-medium mb-2">Email</label>
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500"
            required
          />
        </div>

        {/* Self-Assessment */}
        <div className="border-t pt-4">
          <h3 className="text-lg font-semibold mb-4">Self-Assessment (Rate 1-10)</h3>
          <p className="text-sm text-gray-600 mb-4">
            Rate your proficiency in each required skill. Graph validation will check for consistency.
          </p>

          <div className="space-y-4">
            {job.skills && job.skills.map((skill, index) => (
              <div key={index} className="flex items-center justify-between p-3 bg-gray-50 rounded">
                <div>
                  <span className="font-medium">{skill.name}</span>
                  <span className="text-sm text-gray-600 ml-2">(Weight: {skill.weight})</span>
                </div>
                <input
                  type="range"
                  min="1"
                  max="10"
                  value={selfAssessment[skill.name] || 5}
                  onChange={(e) => handleScoreChange(skill.name, e.target.value)}
                  className="w-48"
                />
                <span className="w-12 text-center font-semibold">
                  {selfAssessment[skill.name] || 5}
                </span>
              </div>
            ))}
          </div>
        </div>

        {/* Validation Error */}
        {validationError && (
          <div className="p-4 bg-red-50 border border-red-200 rounded-lg">
            <p className="text-red-700 text-sm">{validationError}</p>
          </div>
        )}

        {/* Submit */}
        <button
          type="submit"
          className="w-full py-3 bg-blue-600 text-white font-semibold rounded-lg hover:bg-blue-700"
        >
          Submit Application
        </button>
      </form>
    </div>
  );
};

export default CandidateApplicationForm;
