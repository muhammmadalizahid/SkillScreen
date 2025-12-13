import { useState, useEffect } from 'react';
import MaxHeap from '../dsa/MaxHeap';

const RecruiterDashboard = ({ job, applications }) => {
  const [rankedCandidates, setRankedCandidates] = useState([]);
  const [topN, setTopN] = useState(5);
  const [selectedCandidate, setSelectedCandidate] = useState(null);

  useEffect(() => {
    rankCandidates();
  }, [applications, topN]);

  const calculateCandidateScore = (application) => {
    let totalScore = 0;
    let maxPossibleScore = 0;

    // Calculate weighted score based on job requirements
    job.skills.forEach(skill => {
      const candidateScore = application.selfAssessment[skill.name] || 0;
      totalScore += candidateScore * skill.weight;
      maxPossibleScore += 10 * skill.weight;
    });

    // Add test score if available
    if (application.testScore !== undefined) {
      totalScore += application.testScore * 5; // MCQ test weighted
      maxPossibleScore += 100 * 5;
    }

    const percentage = (totalScore / maxPossibleScore) * 100;

    return {
      ...application,
      totalScore,
      maxPossibleScore,
      percentage: percentage.toFixed(2)
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
    <div className="max-w-6xl mx-auto p-6">
      <h2 className="text-3xl font-bold mb-6">Recruiter Dashboard</h2>

      {/* Job Info */}
      <div className="bg-white rounded-lg shadow-md p-6 mb-6">
        <h3 className="text-xl font-semibold mb-2">{job.title}</h3>
        <p className="text-gray-600 mb-4">{job.description}</p>
        <div className="flex gap-4 text-sm">
          <span className="bg-blue-100 px-3 py-1 rounded-full">{job.domain}</span>
          <span className="text-gray-600">
            {applications.length} Applications Received
          </span>
        </div>
      </div>

      {/* Top N Selector */}
      <div className="bg-white rounded-lg shadow-md p-6 mb-6">
        <div className="flex items-center gap-4">
          <label className="font-medium">Show Top:</label>
          <input
            type="number"
            value={topN}
            onChange={(e) => setTopN(parseInt(e.target.value) || 1)}
            min="1"
            max={applications.length}
            className="w-24 px-3 py-2 border rounded-lg"
          />
          <span className="text-gray-600">candidates (using Max-Heap)</span>
        </div>
      </div>

      {/* Ranked Candidates */}
      <div className="bg-white rounded-lg shadow-md p-6">
        <h3 className="text-xl font-semibold mb-4">
          Top {rankedCandidates.length} Candidates (Max-Heap Ranking)
        </h3>

        <div className="space-y-4">
          {rankedCandidates.map((candidate, index) => (
            <div
              key={index}
              className="border rounded-lg p-4 hover:shadow-md transition-shadow cursor-pointer"
              onClick={() => setSelectedCandidate(candidate)}
            >
              <div className="flex justify-between items-start mb-3">
                <div>
                  <div className="flex items-center gap-3">
                    <span className="text-2xl font-bold text-blue-600">#{index + 1}</span>
                    <div>
                      <h4 className="text-lg font-semibold">{candidate.candidateName}</h4>
                      <p className="text-sm text-gray-600">{candidate.candidateEmail}</p>
                    </div>
                  </div>
                </div>
                <div className="text-right">
                  <div className="text-3xl font-bold text-green-600">
                    {candidate.percentage}%
                  </div>
                  <div className="text-sm text-gray-600">
                    {candidate.totalScore.toFixed(1)} / {candidate.maxPossibleScore.toFixed(1)}
                  </div>
                </div>
              </div>

              {/* Skill Breakdown */}
              <div className="grid grid-cols-2 md:grid-cols-3 gap-2 mt-3">
                {job.skills.map((skill, idx) => (
                  <div key={idx} className="bg-gray-50 p-2 rounded">
                    <div className="text-xs text-gray-600">{skill.name}</div>
                    <div className="font-semibold">
                      {candidate.selfAssessment[skill.name] || 0}/10
                    </div>
                  </div>
                ))}
              </div>

              {candidate.testScore !== undefined && (
                <div className="mt-3 p-2 bg-blue-50 rounded">
                  <span className="text-sm font-medium">MCQ Test Score: </span>
                  <span className="font-bold">{candidate.testScore}%</span>
                </div>
              )}
            </div>
          ))}
        </div>

        {rankedCandidates.length === 0 && (
          <div className="text-center text-gray-500 py-8">
            No applications yet
          </div>
        )}
      </div>

      {/* Selected Candidate Details Modal */}
      {selectedCandidate && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center p-4 z-50">
          <div className="bg-white rounded-lg p-6 max-w-2xl w-full max-h-[80vh] overflow-y-auto">
            <div className="flex justify-between items-start mb-4">
              <h3 className="text-2xl font-bold">{selectedCandidate.candidateName}</h3>
              <button
                onClick={() => setSelectedCandidate(null)}
                className="text-gray-500 hover:text-gray-700 text-2xl"
              >
                ×
              </button>
            </div>

            <p className="text-gray-600 mb-4">{selectedCandidate.candidateEmail}</p>

            <div className="mb-4 p-4 bg-green-50 rounded-lg">
              <div className="text-3xl font-bold text-green-600 mb-2">
                {selectedCandidate.percentage}%
              </div>
              <div className="text-sm text-gray-600">
                Overall Score: {selectedCandidate.totalScore.toFixed(1)} / {selectedCandidate.maxPossibleScore.toFixed(1)}
              </div>
            </div>

            <h4 className="font-semibold mb-3">Skill Assessment:</h4>
            <div className="space-y-2 mb-4">
              {job.skills.map((skill, idx) => (
                <div key={idx} className="flex justify-between items-center p-3 bg-gray-50 rounded">
                  <span>{skill.name} (Weight: {skill.weight})</span>
                  <div className="flex items-center gap-2">
                    <div className="w-32 bg-gray-200 rounded-full h-2">
                      <div
                        className="bg-blue-600 h-2 rounded-full"
                        style={{ width: `${(selectedCandidate.selfAssessment[skill.name] || 0) * 10}%` }}
                      />
                    </div>
                    <span className="font-semibold w-12 text-right">
                      {selectedCandidate.selfAssessment[skill.name] || 0}/10
                    </span>
                  </div>
                </div>
              ))}
            </div>

            {selectedCandidate.aiFeedback && (
              <div className="mb-4">
                <h4 className="font-semibold mb-2">AI Feedback:</h4>
                <div className="p-4 bg-purple-50 rounded-lg text-sm">
                  {selectedCandidate.aiFeedback}
                </div>
              </div>
            )}

            <button
              onClick={() => setSelectedCandidate(null)}
              className="w-full py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700"
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
