// Gemini API Service for AI-powered features
const GEMINI_API_KEY = import.meta.env.VITE_GEMINI_API_KEY;
const GEMINI_API_URL = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent';

// Helper function to call Gemini API
const callGeminiAPI = async (prompt) => {
  try {
    const response = await fetch(`${GEMINI_API_URL}?key=${GEMINI_API_KEY}`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        contents: [{
          parts: [{
            text: prompt
          }]
        }]
      }),
    });

    if (!response.ok) {
      throw new Error(`Gemini API Error: ${response.statusText}`);
    }

    const data = await response.json();
    const text = data.candidates[0]?.content?.parts[0]?.text;
    
    return text;
  } catch (error) {
    console.error('Gemini API call failed:', error);
    throw error;
  }
};

// Generate MCQs for skills
export const generateMCQs = async (skills, selfAssessment) => {
  try {
    const questions = [];

    for (const skill of skills) {
      const candidateLevel = selfAssessment[skill.name] || 5;
      let difficulty = 'medium';
      
      if (candidateLevel >= 8) difficulty = 'hard';
      else if (candidateLevel <= 4) difficulty = 'easy';

      const prompt = `Generate 1 multiple-choice question for the skill "${skill.name}".
Include 4 options and specify the correct answer.
Difficulty: ${difficulty} based on candidate level ${candidateLevel}.

Output format (JSON only, no markdown):
{
  "question": "Your question here",
  "options": ["Option A", "Option B", "Option C", "Option D"],
  "answer": "The correct option text"
}`;

      const response = await callGeminiAPI(prompt);
      
      try {
        // Try to parse JSON from response
        const jsonMatch = response.match(/\{[\s\S]*\}/);
        if (jsonMatch) {
          const mcq = JSON.parse(jsonMatch[0]);
          questions.push({
            ...mcq,
            skill: skill.name,
            difficulty
          });
        }
      } catch (parseError) {
        console.error('Error parsing MCQ:', parseError);
        // Fallback question
        questions.push({
          question: `What is your experience level with ${skill.name}?`,
          options: ['Beginner', 'Intermediate', 'Advanced', 'Expert'],
          answer: 'Intermediate',
          skill: skill.name,
          difficulty
        });
      }
    }

    return questions;
  } catch (error) {
    console.error('Error generating MCQs:', error);
    // Return fallback questions
    return skills.map(skill => ({
      question: `What is your proficiency in ${skill.name}?`,
      options: [
        `${skill.name} - Beginner level`,
        `${skill.name} - Intermediate level`,
        `${skill.name} - Advanced level`,
        `${skill.name} - Expert level`
      ],
      answer: `${skill.name} - Intermediate level`,
      skill: skill.name
    }));
  }
};

// Generate personalized feedback
export const generatePersonalizedFeedback = async (candidateData, testResults) => {
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
  "overallAssessment": "A brief overall assessment of the candidate",
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
  "nextSteps": ["step 1", "step 2", "step 3"]
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
    return {
      overallAssessment: `${candidateName} shows good potential with a test score of ${percentage}%.`,
      strengths: [
        Object.entries(selfAssessment).sort((a, b) => b[1] - a[1])[0]?.[0] || 'Technical skills',
        'Self-awareness in skill assessment',
        'Willingness to learn'
      ],
      weaknesses: [
        'Some skills need more practice',
        'Test performance could be improved'
      ],
      skillGaps: Object.entries(selfAssessment)
        .filter(([_, rating]) => rating < 7)
        .map(([skill, rating]) => ({
          skill,
          description: `Current rating: ${rating}/10. Needs more practice and hands-on experience.`,
          priority: rating < 5 ? 'High' : 'Medium',
          relatedSkills: []
        })),
      recommendations: [
        {
          title: 'Practice and Build Projects',
          description: 'Focus on building real-world projects to strengthen weak skills',
          resources: ['Online tutorials', 'Open source projects', 'Coding challenges']
        },
        {
          title: 'Structured Learning',
          description: 'Follow a structured learning path for each skill gap',
          resources: ['Online courses', 'Documentation', 'Books']
        }
      ],
      nextSteps: [
        'Review weak areas identified in the assessment',
        'Create a learning plan for the next 3 months',
        'Build 2-3 projects showcasing your skills',
        'Take online courses for skill gaps',
        'Reapply after improving target skills'
      ]
    };
  } catch (error) {
    console.error('Error generating feedback:', error);
    throw error;
  }
};

export default {
  generateMCQs,
  generatePersonalizedFeedback,
};
