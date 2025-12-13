const { callGeminiAPI } = require('../config/gemini');

// Generate personalized feedback using Gemini API
const generatePersonalizedFeedback = async (candidateData, testResults) => {
  try {
    const { candidateName, selfAssessment } = candidateData;
    const { score, percentage, totalQuestions } = testResults;

    const skillsText = Object.entries(selfAssessment)
      .map(([skill, rating]) => `${skill}: ${rating}/10`)
      .join(', ');

    const prompt = `You are an AI career advisor. Analyze this candidate's performance and provide detailed, personalized feedback.

Candidate Name: ${candidateName}
Self-Assessment: ${skillsText}
MCQ Test Score: ${score}/${totalQuestions} (${percentage}%)

Provide a comprehensive analysis in the following JSON format (JSON only, no markdown):
{
  "overallAssessment": "A brief overall assessment of the candidate (2-3 sentences)",
  "strengths": ["strength 1", "strength 2", "strength 3"],
  "weaknesses": ["weakness 1", "weakness 2"],
  "skillGaps": [
    {
      "skill": "skill name",
      "description": "what needs improvement",
      "priority": "High/Medium/Low",
      "relatedSkills": ["related skill 1", "related skill 2"]
    }
  ],
  "recommendations": [
    {
      "title": "recommendation title",
      "description": "detailed recommendation",
      "resources": ["resource 1", "resource 2"]
    }
  ],
  "nextSteps": ["step 1", "step 2", "step 3", "step 4"]
}`;

    const response = await callGeminiAPI(prompt);
    
    try {
      // Try to parse JSON from response
      const jsonMatch = response.match(/\{[\s\S]*\}/);
      if (jsonMatch) {
        return JSON.parse(jsonMatch[0]);
      }
    } catch (parseError) {
      console.error('Error parsing feedback:', parseError);
    }

    // Fallback feedback
    const sortedSkills = Object.entries(selfAssessment).sort((a, b) => b[1] - a[1]);
    const weakSkills = sortedSkills.filter(([_, rating]) => rating < 7);

    return {
      overallAssessment: `${candidateName} demonstrates a good foundation with a test score of ${percentage}%. There are areas for improvement that, when addressed, will significantly strengthen the overall skill profile.`,
      strengths: [
        sortedSkills[0]?.[0] || 'Technical aptitude',
        'Self-awareness in skill assessment',
        'Willingness to learn and improve'
      ],
      weaknesses: [
        'Some technical skills need more hands-on practice',
        'Test performance indicates gaps in certain areas'
      ],
      skillGaps: weakSkills.map(([skill, rating]) => ({
        skill,
        description: `Current proficiency: ${rating}/10. Needs additional practice and real-world application to reach industry standards.`,
        priority: rating < 5 ? 'High' : 'Medium',
        relatedSkills: []
      })),
      recommendations: [
        {
          title: 'Build Real-World Projects',
          description: 'Focus on creating portfolio projects that demonstrate practical application of weak skills. This hands-on experience is invaluable.',
          resources: ['GitHub', 'Personal blog', 'Open source contributions']
        },
        {
          title: 'Structured Learning Path',
          description: 'Follow a systematic approach to strengthen each identified skill gap. Break down complex topics into manageable chunks.',
          resources: ['Online courses (Udemy, Coursera)', 'Official documentation', 'Technical books']
        },
        {
          title: 'Practice Problem-Solving',
          description: 'Regularly solve coding challenges to improve problem-solving skills and technical proficiency.',
          resources: ['LeetCode', 'HackerRank', 'CodeForces']
        }
      ],
      nextSteps: [
        'Review the detailed skill gap analysis and prioritize high-priority areas',
        'Create a 3-month learning plan focusing on weak skills',
        'Build 2-3 substantial projects showcasing improved skills',
        'Complete relevant online courses or certifications',
        'Reapply to positions after demonstrating skill improvement'
      ]
    };
  } catch (error) {
    console.error('Error generating feedback:', error);
    throw error;
  }
};

module.exports = {
  generatePersonalizedFeedback
};
