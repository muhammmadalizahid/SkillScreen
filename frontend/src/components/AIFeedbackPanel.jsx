import { useState, useEffect } from 'react';
import { generatePersonalizedFeedback } from '../services/geminiService';

const AIFeedbackPanel = ({ candidateData, testResults }) => {
  const [feedback, setFeedback] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetchFeedback();
  }, []);

  const fetchFeedback = async () => {
    try {
      setLoading(true);
      const response = await generatePersonalizedFeedback(candidateData, testResults);
      setFeedback(response);
    } catch (err) {
      setError('Failed to generate AI feedback. Please try again.');
      console.error(err);
    } finally {
      setLoading(false);
    }
  };

  if (loading) {
    return (
      <div className="max-w-4xl mx-auto p-6 bg-white rounded-lg shadow-md">
        <div className="animate-pulse space-y-4">
          <div className="h-8 bg-gray-200 rounded w-1/3"></div>
          <div className="h-4 bg-gray-200 rounded"></div>
          <div className="h-4 bg-gray-200 rounded w-5/6"></div>
          <div className="h-4 bg-gray-200 rounded w-4/6"></div>
        </div>
        <p className="text-center text-gray-600 mt-4">Generating AI feedback...</p>
      </div>
    );
  }

  if (error) {
    return (
      <div className="max-w-4xl mx-auto p-6 bg-white rounded-lg shadow-md">
        <div className="bg-red-50 border border-red-200 rounded-lg p-4">
          <p className="text-red-700">{error}</p>
          <button
            onClick={fetchFeedback}
            className="mt-4 px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700"
          >
            Retry
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="max-w-4xl mx-auto p-6 bg-white rounded-lg shadow-md">
      <h2 className="text-2xl font-bold mb-6">AI-Generated Personalized Feedback</h2>

      {/* Overall Assessment */}
      <div className="mb-6 p-4 bg-gradient-to-r from-purple-50 to-blue-50 rounded-lg">
        <h3 className="text-lg font-semibold mb-2">Overall Assessment</h3>
        <p className="text-gray-700">{feedback?.overallAssessment}</p>
      </div>

      {/* Performance Summary */}
      <div className="mb-6">
        <h3 className="text-lg font-semibold mb-3">Performance Summary</h3>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <div className="p-4 bg-green-50 rounded-lg">
            <h4 className="font-medium text-green-800 mb-2">Strengths</h4>
            <ul className="list-disc list-inside space-y-1 text-sm text-gray-700">
              {feedback?.strengths?.map((strength, index) => (
                <li key={index}>{strength}</li>
              ))}
            </ul>
          </div>
          <div className="p-4 bg-yellow-50 rounded-lg">
            <h4 className="font-medium text-yellow-800 mb-2">Areas for Improvement</h4>
            <ul className="list-disc list-inside space-y-1 text-sm text-gray-700">
              {feedback?.weaknesses?.map((weakness, index) => (
                <li key={index}>{weakness}</li>
              ))}
            </ul>
          </div>
        </div>
      </div>

      {/* Skill Gaps (Using Graph-based Analysis) */}
      <div className="mb-6">
        <h3 className="text-lg font-semibold mb-3">Skill Gap Analysis</h3>
        <p className="text-sm text-gray-600 mb-3">
          Based on dependency graph analysis and your performance
        </p>
        <div className="space-y-3">
          {feedback?.skillGaps?.map((gap, index) => (
            <div key={index} className="p-4 bg-red-50 border border-red-200 rounded-lg">
              <div className="flex justify-between items-start mb-2">
                <h4 className="font-medium text-red-800">{gap.skill}</h4>
                <span className="text-sm text-red-600">Priority: {gap.priority}</span>
              </div>
              <p className="text-sm text-gray-700 mb-2">{gap.description}</p>
              <div className="text-xs text-gray-600">
                Related skills: {gap.relatedSkills?.join(', ')}
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* Learning Recommendations */}
      <div className="mb-6">
        <h3 className="text-lg font-semibold mb-3">Learning Path Recommendations</h3>
        <div className="space-y-4">
          {feedback?.recommendations?.map((rec, index) => (
            <div key={index} className="p-4 bg-blue-50 rounded-lg">
              <div className="flex items-start gap-3">
                <div className="bg-blue-600 text-white w-8 h-8 rounded-full flex items-center justify-center font-bold flex-shrink-0">
                  {index + 1}
                </div>
                <div className="flex-1">
                  <h4 className="font-medium mb-1">{rec.title}</h4>
                  <p className="text-sm text-gray-700 mb-2">{rec.description}</p>
                  {rec.resources && (
                    <div className="text-xs text-blue-600">
                      Suggested resources: {rec.resources.join(', ')}
                    </div>
                  )}
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* Next Steps */}
      <div className="p-4 bg-gradient-to-r from-green-50 to-blue-50 rounded-lg">
        <h3 className="text-lg font-semibold mb-2">Next Steps</h3>
        <ul className="list-decimal list-inside space-y-2 text-sm text-gray-700">
          {feedback?.nextSteps?.map((step, index) => (
            <li key={index}>{step}</li>
          ))}
        </ul>
      </div>

      {/* Action Buttons */}
      <div className="mt-6 flex gap-4">
        <button
          onClick={() => window.print()}
          className="flex-1 py-3 bg-blue-600 text-white font-semibold rounded-lg hover:bg-blue-700"
        >
          Print Feedback
        </button>
        <button
          onClick={fetchFeedback}
          className="flex-1 py-3 bg-gray-600 text-white font-semibold rounded-lg hover:bg-gray-700"
        >
          Regenerate Feedback
        </button>
      </div>
    </div>
  );
};

export default AIFeedbackPanel;
