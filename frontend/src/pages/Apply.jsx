import { useState } from 'react';
import { useParams, useLocation, useNavigate } from 'react-router-dom';
import CandidateApplicationForm from '../components/CandidateApplicationForm';
import MCQTestView from '../components/MCQTestView';
import AIFeedbackPanel from '../components/AIFeedbackPanel';
import { generateMCQs } from '../services/geminiService';
import { submitApplication } from '../services/api';

const Apply = () => {
  const { jobId } = useParams();
  const location = useLocation();
  const navigate = useNavigate();
  const job = location.state?.job;

  const [step, setStep] = useState(1); // 1: Application, 2: MCQ Test, 3: Feedback
  const [applicationData, setApplicationData] = useState(null);
  const [mcqQuestions, setMcqQuestions] = useState([]);
  const [testResults, setTestResults] = useState(null);

  if (!job) {
    return (
      <div className="container mx-auto px-4 py-16 text-center">
        <h2 className="text-2xl font-bold mb-4">Job not found</h2>
        <button
          onClick={() => navigate('/jobs')}
          className="px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700"
        >
          Browse Jobs
        </button>
      </div>
    );
  }

  const handleApplicationSubmit = async (data) => {
    setApplicationData(data);

    // Generate MCQs based on job skills
    try {
      const questions = await generateMCQs(job.skills, data.selfAssessment);
      setMcqQuestions(questions);
      setStep(2);
    } catch (error) {
      console.error('Error generating MCQs:', error);
      // Use mock questions for development
      const mockQuestions = job.skills.map(skill => ({
        question: `What is ${skill.name}?`,
        options: [
          `${skill.name} is a programming language`,
          `${skill.name} is a framework`,
          `${skill.name} is a library`,
          `${skill.name} is a tool`
        ],
        answer: `${skill.name} is a framework`,
        skill: skill.name
      }));
      setMcqQuestions(mockQuestions);
      setStep(2);
    }
  };

  const handleTestComplete = async (score, percentage) => {
    const results = {
      score,
      percentage,
      totalQuestions: mcqQuestions.length
    };
    setTestResults(results);

    // Submit complete application with test results
    try {
      await submitApplication({
        ...applicationData,
        testScore: percentage,
        testResults: results
      });
    } catch (error) {
      console.error('Error submitting application:', error);
    }

    setStep(3);
  };

  return (
    <div className="min-h-screen bg-gray-50 py-8">
      <div className="container mx-auto px-4">
        {/* Progress Indicator */}
        <div className="max-w-4xl mx-auto mb-8">
          <div className="flex items-center justify-between">
            <div className={`flex items-center ${step >= 1 ? 'text-blue-600' : 'text-gray-400'}`}>
              <div className={`w-10 h-10 rounded-full flex items-center justify-center font-bold ${
                step >= 1 ? 'bg-blue-600 text-white' : 'bg-gray-300'
              }`}>
                1
              </div>
              <span className="ml-2 font-medium">Application</span>
            </div>

            <div className={`flex-1 h-1 mx-4 ${step >= 2 ? 'bg-blue-600' : 'bg-gray-300'}`} />

            <div className={`flex items-center ${step >= 2 ? 'text-blue-600' : 'text-gray-400'}`}>
              <div className={`w-10 h-10 rounded-full flex items-center justify-center font-bold ${
                step >= 2 ? 'bg-blue-600 text-white' : 'bg-gray-300'
              }`}>
                2
              </div>
              <span className="ml-2 font-medium">MCQ Test</span>
            </div>

            <div className={`flex-1 h-1 mx-4 ${step >= 3 ? 'bg-blue-600' : 'bg-gray-300'}`} />

            <div className={`flex items-center ${step >= 3 ? 'text-blue-600' : 'text-gray-400'}`}>
              <div className={`w-10 h-10 rounded-full flex items-center justify-center font-bold ${
                step >= 3 ? 'bg-blue-600 text-white' : 'bg-gray-300'
              }`}>
                3
              </div>
              <span className="ml-2 font-medium">AI Feedback</span>
            </div>
          </div>
        </div>

        {/* Step Content */}
        {step === 1 && (
          <CandidateApplicationForm
            job={job}
            onSubmit={handleApplicationSubmit}
          />
        )}

        {step === 2 && (
          <MCQTestView
            questions={mcqQuestions}
            onComplete={handleTestComplete}
          />
        )}

        {step === 3 && (
          <>
            <AIFeedbackPanel
              candidateData={applicationData}
              testResults={testResults}
            />
            <div className="max-w-4xl mx-auto mt-6 text-center">
              <button
                onClick={() => navigate('/jobs')}
                className="px-8 py-3 bg-blue-600 text-white font-semibold rounded-lg hover:bg-blue-700"
              >
                Browse More Jobs
              </button>
            </div>
          </>
        )}
      </div>
    </div>
  );
};

export default Apply;
