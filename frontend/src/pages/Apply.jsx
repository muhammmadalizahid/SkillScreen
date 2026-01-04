import { useState } from 'react';
import { useParams, useLocation, useNavigate } from 'react-router-dom';
import CandidateApplicationForm from '../components/CandidateApplicationForm';
import MCQTestView from '../components/MCQTestView';
import SimilarJobs from '../components/SimilarJobs';
import { submitApplication, getMCQs, submitMCQAnswers } from '../services/api';

const Apply = () => {
  const { jobId } = useParams();
  const location = useLocation();
  const navigate = useNavigate();
  const job = location.state?.job;

  const [step, setStep] = useState(1); // 1: Application, 2: MCQ Test, 3: Results
  const [applicationData, setApplicationData] = useState(null);
  const [mcqQuestions, setMcqQuestions] = useState([]);
  const [testResults, setTestResults] = useState(null);

  if (!job) {
    return (
      <div className="min-h-screen bg-[#f3f2ef] flex items-center justify-center py-20">
        <div className="container mx-auto px-8">
          <div className="max-w-md mx-auto bg-white rounded-lg border border-gray-200 shadow-lg p-10 text-center">
            <h2 className="text-2xl font-bold text-gray-900 mb-3">Job not found</h2>
            <p className="text-sm text-gray-600 mb-6">The job you're looking for doesn't exist or has been removed.</p>
            <button
              onClick={() => navigate('/jobs')}
              className="px-8 py-3 bg-[#0a66c2] text-white text-sm font-semibold rounded-lg hover:bg-[#004182] shadow-md hover:shadow-lg transition-all"
            >
              Browse Jobs
            </button>
          </div>
        </div>
      </div>
    );
  }

  const handleApplicationSubmit = async (data) => {
    try {
      // Submit application to backend
      const application = await submitApplication(data);
      
      // Generate MCQs via backend API
      const mcqData = await getMCQs({
        applicationId: application.id,
        jobId: job.id,
        domainId: job.domain_id
      });

      console.log('📊 MCQ generation response:', mcqData);

      const sessionId =
        mcqData?.testSessionId ||
        mcqData?.test_session_id ||
        mcqData?.testSession?.id ||
        mcqData?.test_session?.id ||
        mcqData?.data?.testSessionId ||
        mcqData?.data?.test_session_id ||
        mcqData?.data?.testSession?.id ||
        mcqData?.data?.test_session?.id;

      const questionsPayload =
        mcqData?.questions ||
        mcqData?.data?.questions ||
        (Array.isArray(mcqData?.data) ? mcqData.data : mcqData);

      console.log('🔑 Extracted sessionId:', sessionId);
      console.log('❓ Questions count:', questionsPayload?.length);

      if (!Array.isArray(questionsPayload)) {
        console.error('MCQ generation response missing questions array:', mcqData);
        throw new Error('No questions received from MCQ generation');
      }

      // If backend does not provide a test session, allow proceeding with questions-only flow.
      setApplicationData({
        ...data,
        applicationId: application.id,
        testSessionId: sessionId || null
      });
      setMcqQuestions(questionsPayload);
      setStep(2);
    } catch (error) {
      console.error('Error submitting application or generating MCQs:', error);
      alert('Failed to start test. Please try again.');
    }
  };

  const handleTestComplete = async (userAnswers) => {
    try {
      console.log('🎯 Submitting test with:', { 
        testSessionId: applicationData?.testSessionId,
        answersCount: userAnswers?.length,
        applicationData 
      });
      
      const payload = {
        testSessionId: applicationData?.testSessionId,
        applicationId: applicationData?.applicationId, // Include for storing results
        answers: userAnswers,
      };

      // If no session id, attempt submission without it (questions-only flow)
      const submissionPayload = payload.testSessionId 
        ? payload 
        : { answers: userAnswers, applicationId: applicationData?.applicationId };

      console.log('📤 Final submission payload:', submissionPayload);
      
      const data = await submitMCQAnswers(submissionPayload);
      
      const results = {
        score: data.score,
        percentage: data.percentage,
        totalQuestions: mcqQuestions.length,
        results: data.results // Detailed results for each question
      };
      
      setTestResults(results);
      setStep(3);
    } catch (error) {
      console.error('Error submitting test:', error);
      alert('Failed to submit test. Please try again.');
    }
  };

  return (
    <div className="min-h-screen bg-[#f3f2ef] py-10">
      <div className="container mx-auto px-8">
        {/* Progress Indicator */}
        <div className="max-w-5xl mx-auto mb-10">
          <div className="flex items-center justify-between relative">
            {/* Step 1 */}
            <div className="flex flex-col items-center z-10">
              <div className={`w-12 h-12 rounded-full border-4 flex items-center justify-center text-base font-bold transition-all ${
                step >= 1 ? 'bg-[#0a66c2] text-white border-[#0a66c2] shadow-lg' : 'bg-white text-gray-400 border-gray-300'
              }`}>
                {step > 1 ? '✓' : '1'}
              </div>
              <span className={`mt-3 text-sm font-semibold ${
                step >= 1 ? 'text-[#0a66c2]' : 'text-gray-400'
              }`}>Application</span>
            </div>

            {/* Connector 1 */}
            <div className={`flex-1 h-1 mx-4 rounded transition-all ${
              step >= 2 ? 'bg-[#0a66c2]' : 'bg-gray-300'
            }`} />

            {/* Step 2 */}
            <div className="flex flex-col items-center z-10">
              <div className={`w-12 h-12 rounded-full border-4 flex items-center justify-center text-base font-bold transition-all ${
                step >= 2 ? 'bg-[#0a66c2] text-white border-[#0a66c2] shadow-lg' : 'bg-white text-gray-400 border-gray-300'
              }`}>
                {step > 2 ? '✓' : '2'}
              </div>
              <span className={`mt-3 text-sm font-semibold ${
                step >= 2 ? 'text-[#0a66c2]' : 'text-gray-400'
              }`}>Assessment</span>
            </div>

            {/* Connector 2 */}
            <div className={`flex-1 h-1 mx-4 rounded transition-all ${
              step >= 3 ? 'bg-[#0a66c2]' : 'bg-gray-300'
            }`} />

            {/* Step 3 */}
            <div className="flex flex-col items-center z-10">
              <div className={`w-12 h-12 rounded-full border-4 flex items-center justify-center text-base font-bold transition-all ${
                step >= 3 ? 'bg-[#0a66c2] text-white border-[#0a66c2] shadow-lg' : 'bg-white text-gray-400 border-gray-300'
              }`}>
                {step >= 3 ? '✓' : '3'}
              </div>
              <span className={`mt-3 text-sm font-semibold ${
                step >= 3 ? 'text-[#0a66c2]' : 'text-gray-400'
              }`}>Results</span>
            </div>
          </div>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8 max-w-7xl mx-auto">
          {/* Main Content - Left Column (2/3 width) */}
          <div className="lg:col-span-2">
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
              <div className="bg-white rounded-lg border border-gray-200 shadow-lg p-8">
                <h2 className="text-3xl font-bold text-gray-900 mb-8 text-center">Test Results</h2>
                
                {/* Test Score Summary */}
                <div className="mb-8 p-6 bg-gradient-to-r from-blue-50 to-indigo-50 rounded-lg border-2 border-blue-200">
                  <div className="grid grid-cols-2 gap-6">
                    <div className="text-center p-6 bg-white rounded-lg shadow-sm">
                      <p className="text-sm text-gray-600 mb-2">Your Score</p>
                      <p className="text-5xl font-bold text-[#0a66c2]">{testResults?.score}/{testResults?.totalQuestions}</p>
                    </div>
                    <div className="text-center p-6 bg-white rounded-lg shadow-sm">
                      <p className="text-sm text-gray-600 mb-2">Percentage</p>
                      <p className="text-5xl font-bold text-[#0a66c2]">{testResults?.percentage}%</p>
                    </div>
                  </div>
                </div>

                {/* Performance Message */}
                <div className={`mb-8 p-6 rounded-lg border-2 ${
                  testResults?.percentage >= 80 ? 'bg-green-50 border-green-300' :
                  testResults?.percentage >= 60 ? 'bg-blue-50 border-blue-300' :
                  testResults?.percentage >= 40 ? 'bg-yellow-50 border-yellow-300' : 'bg-red-50 border-red-300'
                }`}>
                  <h3 className="text-xl font-bold mb-3 ${
                    testResults?.percentage >= 80 ? 'text-green-800' :
                    testResults?.percentage >= 60 ? 'text-blue-800' :
                    testResults?.percentage >= 40 ? 'text-yellow-800' : 'text-red-800'
                  }">
                    {testResults?.percentage >= 80 ? 'Excellent Performance!' :
                     testResults?.percentage >= 60 ? 'Good Performance!' :
                     testResults?.percentage >= 40 ? 'Fair Performance' : 'Needs Improvement'}
                  </h3>
                  <p className="text-sm text-gray-700">
                    {testResults?.percentage >= 80 
                      ? 'You demonstrated strong technical knowledge. Great job!' 
                      : testResults?.percentage >= 60 
                      ? 'You showed solid understanding of the concepts. Keep up the good work!' 
                      : testResults?.percentage >= 40
                      ? 'You have foundational knowledge but there is room for improvement.'
                      : 'Consider reviewing the fundamentals and practicing more before reapplying.'}
                  </p>
                </div>

                {/* Application Status */}
                <div className="mb-8 p-6 bg-blue-50 rounded-lg border-2 border-blue-200">
                  <h3 className="text-lg font-bold text-gray-900 mb-2">Application Submitted Successfully</h3>
                  <p className="text-sm text-gray-700">
                    Thank you for completing the assessment. The recruiter will review your application and test results. 
                    You will be notified if you are shortlisted for the next round.
                  </p>
                </div>

                <div className="text-center">
                  <button
                    onClick={() => navigate('/jobs')}
                    className="px-10 py-4 bg-[#0a66c2] text-white text-base font-semibold rounded-lg hover:bg-[#004182] shadow-lg hover:shadow-xl transition-all"
                  >
                    Browse More Opportunities
                  </button>
                </div>
              </div>
            )}
          </div>

          {/* Sidebar - Right Column (1/3 width) */}
          <div className="lg:col-span-1">
            <SimilarJobs jobId={jobId} currentJobTitle={job?.title} />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Apply;
