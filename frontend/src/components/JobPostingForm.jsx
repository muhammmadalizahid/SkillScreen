import { useState } from 'react';
import LinkedList from '../dsa/LinkedList';
import Graph from '../dsa/Graph';

const JobPostingForm = ({ onSubmit }) => {
  const [jobTitle, setJobTitle] = useState('');
  const [description, setDescription] = useState('');
  const [domain, setDomain] = useState('');
  const [skillInput, setSkillInput] = useState('');
  const [weightInput, setWeightInput] = useState('');
  const [skills, setSkills] = useState(new LinkedList());
  const [skillsArray, setSkillsArray] = useState([]);
  const [dependencySource, setDependencySource] = useState('');
  const [dependencyTarget, setDependencyTarget] = useState('');
  const [skillGraph] = useState(new Graph());

  const domains = [
    'Web Development',
    'Software Engineering',
    'AI/ML',
    'Cybersecurity',
    'DevOps',
    'Data Science'
  ];

  const addSkill = () => {
    if (skillInput && weightInput) {
      const skillData = {
        name: skillInput,
        weight: parseInt(weightInput)
      };
      
      // Add to LinkedList (manual DS)
      skills.insert(skillData);
      
      // Add to graph for dependency tracking
      skillGraph.addVertex(skillInput);
      
      // Update display array
      setSkillsArray(skills.toArray());
      
      setSkillInput('');
      setWeightInput('');
    }
  };

  const removeSkill = (skillName) => {
    skills.delete(skills.toArray().find(s => s.name === skillName));
    skillGraph.removeVertex(skillName);
    setSkillsArray(skills.toArray());
  };

  const addDependency = () => {
    if (dependencySource && dependencyTarget) {
      // Add directed edge in graph (source skill depends on target skill)
      skillGraph.addEdge(dependencySource, dependencyTarget);
      setDependencySource('');
      setDependencyTarget('');
    }
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    
    // Validate no circular dependencies
    if (skillGraph.hasCycle()) {
      alert('Error: Circular skill dependencies detected!');
      return;
    }

    const jobData = {
      title: jobTitle,
      description,
      domain,
      skills: skills.toArray(),
      skillGraph: skillGraph.adjacencyList
    };

    onSubmit(jobData);
  };

  return (
    <div className="max-w-4xl mx-auto p-6 bg-white rounded-lg shadow-md">
      <h2 className="text-2xl font-bold mb-6">Post a New Job</h2>
      
      <form onSubmit={handleSubmit} className="space-y-6">
        {/* Job Title */}
        <div>
          <label className="block text-sm font-medium mb-2">Job Title</label>
          <input
            type="text"
            value={jobTitle}
            onChange={(e) => setJobTitle(e.target.value)}
            className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500"
            required
          />
        </div>

        {/* Domain */}
        <div>
          <label className="block text-sm font-medium mb-2">Domain</label>
          <select
            value={domain}
            onChange={(e) => setDomain(e.target.value)}
            className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500"
            required
          >
            <option value="">Select Domain</option>
            {domains.map(d => (
              <option key={d} value={d}>{d}</option>
            ))}
          </select>
        </div>

        {/* Description */}
        <div>
          <label className="block text-sm font-medium mb-2">Job Description</label>
          <textarea
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500"
            rows="4"
            required
          />
        </div>

        {/* Add Skills (using LinkedList) */}
        <div className="border-t pt-4">
          <h3 className="text-lg font-semibold mb-3">Add Skills (Linked List)</h3>
          <div className="flex gap-2 mb-4">
            <input
              type="text"
              placeholder="Skill name"
              value={skillInput}
              onChange={(e) => setSkillInput(e.target.value)}
              className="flex-1 px-4 py-2 border rounded-lg"
            />
            <input
              type="number"
              placeholder="Weight (1-10)"
              value={weightInput}
              onChange={(e) => setWeightInput(e.target.value)}
              min="1"
              max="10"
              className="w-32 px-4 py-2 border rounded-lg"
            />
            <button
              type="button"
              onClick={addSkill}
              className="px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600"
            >
              Add
            </button>
          </div>

          {/* Display Skills */}
          <div className="space-y-2">
            {skillsArray.map((skill, index) => (
              <div key={index} className="flex justify-between items-center bg-gray-50 p-3 rounded">
                <span>{skill.name} (Weight: {skill.weight})</span>
                <button
                  type="button"
                  onClick={() => removeSkill(skill.name)}
                  className="text-red-500 hover:text-red-700"
                >
                  Remove
                </button>
              </div>
            ))}
          </div>
        </div>

        {/* Add Skill Dependencies (using Graph) */}
        <div className="border-t pt-4">
          <h3 className="text-lg font-semibold mb-3">Add Skill Dependencies (Graph)</h3>
          <div className="flex gap-2 mb-2">
            <select
              value={dependencySource}
              onChange={(e) => setDependencySource(e.target.value)}
              className="flex-1 px-4 py-2 border rounded-lg"
            >
              <option value="">Source Skill</option>
              {skillsArray.map((skill, idx) => (
                <option key={idx} value={skill.name}>{skill.name}</option>
              ))}
            </select>
            <span className="self-center">→</span>
            <select
              value={dependencyTarget}
              onChange={(e) => setDependencyTarget(e.target.value)}
              className="flex-1 px-4 py-2 border rounded-lg"
            >
              <option value="">Depends on</option>
              {skillsArray.map((skill, idx) => (
                <option key={idx} value={skill.name}>{skill.name}</option>
              ))}
            </select>
            <button
              type="button"
              onClick={addDependency}
              className="px-4 py-2 bg-green-500 text-white rounded-lg hover:bg-green-600"
            >
              Add
            </button>
          </div>
          <p className="text-sm text-gray-600">
            Example: React → JavaScript (React depends on JavaScript)
          </p>
        </div>

        {/* Submit */}
        <button
          type="submit"
          className="w-full py-3 bg-blue-600 text-white font-semibold rounded-lg hover:bg-blue-700"
        >
          Post Job
        </button>
      </form>
    </div>
  );
};

export default JobPostingForm;
