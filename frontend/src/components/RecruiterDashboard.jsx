import { useState, useEffect } from 'react';
import MaxHeap from '../dsa/MaxHeap';

const RecruiterDashboard = ({ job, applications }) => {
  const [rankedCandidates, setRankedCandidates] = useState([]);
  const [topN, setTopN] = useState(5);
  const [topNInput, setTopNInput] = useState('5');
  const [selectedCandidate, setSelectedCandidate] = useState(null);

  useEffect(() => {
    rankCandidates();
  }, [applications, topN]);

  const handleTopNChange = (value) => {
    setTopNInput(value);
    
    // If empty, show all candidates
    if (value === '' || value === null || value === undefined) {
      setTopN(applications.length);
    } else {
      const num = parseInt(value);
      if (!isNaN(num) && num > 0) {
        setTopN(num);
      }
    }
  };

  const calculateCandidateScore = (application) => {
    let totalScore = 0;
    let maxPossibleScore = 100; // Based on MCQ test percentage

    // Use test percentage as the primary score
    if (application.testPercentage !== undefined && application.testPercentage !== null) {
      totalScore = application.testPercentage;
    }

    return {
      ...application,
      totalScore,
      maxPossibleScore,
      percentage: totalScore.toFixed(2)
    };
  };

  const rankCandidates = () => {
    // Use MaxHeap to rank candidates
    const heap = new MaxHeap((a, b) => a.totalScore > b.totalScore);

    // Calculate scores and insert into heap
    applications.forEach(app => {
      const candidateWithScore = calculateCandidateScore(app);
      heap.insert(candidateWithScore);
    });

    // Extract top N candidates
    const topCandidates = [];
    const limit = Math.min(topN, heap.size());
    
    for (let i = 0; i < limit; i++) {
      const candidate = heap.extractMax();
      if (candidate) {
        topCandidates.push(candidate);
      }
    }

    setRankedCandidates(topCandidates);
  };

  return (
    <div className="max-w-6xl mx-auto">
      <h2 className="text-3xl font-semibold text-gray-900 mb-6">Recruiter Dashboard</h2>

      {/* Job Info */}
      <div className="bg-white border border-gray-300 p-6 mb-6">
        <h3 className="text-xl font-medium text-gray-900 mb-2">{job.title}</h3>
        <p className="text-sm text-gray-700 mb-4 leading-relaxed">{job.description}</p>
        <div className="flex gap-4 text-sm">
          <span className="bg-[#f3f2ef] px-3 py-1 border border-gray-300 text-gray-700">{job.domain}</span>
          <span className="text-gray-600">
            {applications.length} Applications Received
          </span>
        </div>
      </div>

      {/* Top N Selector */}
      <div className="bg-white border border-gray-300 p-6 mb-6">
        <div className="flex items-center gap-4">
          <label className="font-medium text-sm text-gray-900">Show Top:</label>
          <input
            type="number"
            value={topNInput}
            onChange={(e) => handleTopNChange(e.target.value)}
            onBlur={() => {
              // Reset to current topN display value if input is invalid
              if (topNInput === '' || topNInput === null) {
                setTopNInput('');
              }
            }}
            min="1"
            placeholder={`All (${applications.length})`}
            className="w-32 px-3 py-2 border border-gray-300 text-sm focus:outline-none focus:border-[#0a66c2] focus:ring-1 focus:ring-[#0a66c2]"
          />
          <span className="text-sm text-gray-600">
            {topNInput === '' ? `showing all ${applications.length}` : 'candidates'}
          </span>
        </div>
      </div>

      {/* Ranked Candidates */}
      <div className="bg-white border border-gray-300 p-6">
        <h3 className="text-xl font-medium text-gray-900 mb-4">
          Top {rankedCandidates.length} Candidates
        </h3>

        <div className="space-y-3">
          {rankedCandidates.map((candidate, index) => (
            <div
              key={index}
              className="border border-gray-300 p-4 hover:border-[#0a66c2] transition-colors cursor-pointer"
              onClick={() => setSelectedCandidate(candidate)}
            >
              <div className="flex justify-between items-start mb-3">
                <div>
                  <div className="flex items-center gap-3">
                    <span className="text-xl font-bold text-[#0a66c2]">#{index + 1}</span>
                    <div>
                      <h4 className="text-base font-medium text-gray-900">{candidate.candidateName}</h4>
                      <p className="text-xs text-gray-600">{candidate.candidateEmail}</p>
                    </div>
                  </div>
                </div>
                <div className="text-right">
                  <div className="text-2xl font-bold text-green-700">
                    {candidate.percentage}%
                  </div>
                  <div className="text-xs text-gray-600">Assessment Score</div>
                </div>
              </div>

              {candidate.testPercentage !== undefined && candidate.testPercentage !== null && (
                <div className="mt-3 p-2 bg-green-50 border border-green-300">
                  <span className="text-xs font-medium text-gray-900">MCQ Test Score: </span>
                  <span className="font-bold text-sm text-gray-900">{candidate.testPercentage.toFixed(2)}%</span>
                  <span className="text-xs text-gray-600 ml-2">({candidate.testScore || 0} correct)</span>
                </div>
              )}
            </div>
          ))}
        </div>

        {rankedCandidates.length === 0 && (
          <div className="text-center text-sm text-gray-600 py-8">
            No applications received yet
          </div>
        )}
      </div>

      {/* Selected Candidate Details Modal */}
      {selectedCandidate && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center p-4 z-50">
          <div className="bg-white p-6 max-w-2xl w-full max-h-[80vh] overflow-y-auto border border-gray-300">
            <div className="flex justify-between items-start mb-4">
              <h3 className="text-2xl font-semibold text-gray-900">{selectedCandidate.candidateName}</h3>
              <button
                onClick={() => setSelectedCandidate(null)}
                className="text-gray-500 hover:text-gray-900 text-2xl font-normal"
              >
                ×
              </button>
            </div>

            <p className="text-sm text-gray-600 mb-4">{selectedCandidate.candidateEmail}</p>

            <div className="mb-4 p-4 bg-green-50 border border-green-300">
              <div className="text-3xl font-bold text-green-700 mb-2">
                {selectedCandidate.percentage}%
              </div>
              <div className="text-xs text-gray-600">Assessment Score</div>
            </div>

            <div className="mb-4 p-4 bg-gray-50 border border-gray-200">
              <h4 className="font-medium text-sm text-gray-900 mb-1">Domain</h4>
              <span className="text-sm text-gray-700">{job.domain}</span>
            </div>

            {selectedCandidate.testPercentage !== undefined && selectedCandidate.testPercentage !== null && (
              <div className="mb-4 p-4 bg-blue-50 border border-blue-300">
                <h4 className="font-medium text-sm text-gray-900 mb-2">MCQ Test Performance</h4>
                <div className="text-2xl font-bold text-blue-700">
                  {selectedCandidate.testPercentage.toFixed(2)}%
                </div>
                <p className="text-xs text-gray-600 mt-1">
                  {selectedCandidate.testScore || 0} correct answers
                </p>
              </div>
            )}

            <button
              onClick={() => setSelectedCandidate(null)}
              className="w-full py-2 bg-[#0a66c2] text-white text-sm font-medium hover:bg-[#004182] border border-[#0a66c2]"
            >
              Close
            </button>
          </div>
        </div>
      )}
    </div>
  );
};

export default RecruiterDashboard;
