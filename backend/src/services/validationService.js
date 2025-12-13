const supabase = require('../config/db');
const { getJobById } = require('./skillService');

// Manual Graph implementation for dependency validation
class Graph {
  constructor() {
    this.adjacencyList = {};
  }

  addVertex(vertex) {
    if (!this.adjacencyList[vertex]) {
      this.adjacencyList[vertex] = [];
    }
  }

  addEdge(source, destination) {
    if (!this.adjacencyList[source]) {
      this.addVertex(source);
    }
    if (!this.adjacencyList[destination]) {
      this.addVertex(destination);
    }
    if (!this.adjacencyList[source].includes(destination)) {
      this.adjacencyList[source].push(destination);
    }
  }

  bfs(startVertex) {
    const visited = {};
    const queue = [startVertex];
    const result = [];
    
    visited[startVertex] = true;
    
    while (queue.length > 0) {
      const currentVertex = queue.shift();
      result.push(currentVertex);
      
      const neighbors = this.adjacencyList[currentVertex] || [];
      for (let i = 0; i < neighbors.length; i++) {
        const neighbor = neighbors[i];
        if (!visited[neighbor]) {
          visited[neighbor] = true;
          queue.push(neighbor);
        }
      }
    }
    
    return result;
  }
}

// Manual MaxHeap implementation for candidate ranking
class MaxHeap {
  constructor(compareFn) {
    this.heap = [];
    this.compare = compareFn || ((a, b) => a > b);
  }

  getParentIndex(index) {
    return Math.floor((index - 1) / 2);
  }

  getLeftChildIndex(index) {
    return 2 * index + 1;
  }

  getRightChildIndex(index) {
    return 2 * index + 2;
  }

  swap(index1, index2) {
    const temp = this.heap[index1];
    this.heap[index1] = this.heap[index2];
    this.heap[index2] = temp;
  }

  insert(value) {
    this.heap.push(value);
    this.heapifyUp(this.heap.length - 1);
  }

  heapifyUp(index) {
    let currentIndex = index;
    while (currentIndex > 0) {
      const parentIndex = this.getParentIndex(currentIndex);
      if (this.compare(this.heap[currentIndex], this.heap[parentIndex])) {
        this.swap(currentIndex, parentIndex);
        currentIndex = parentIndex;
      } else {
        break;
      }
    }
  }

  extractMax() {
    if (this.heap.length === 0) return null;
    if (this.heap.length === 1) return this.heap.pop();
    
    const max = this.heap[0];
    this.heap[0] = this.heap.pop();
    this.heapifyDown(0);
    return max;
  }

  heapifyDown(index) {
    let currentIndex = index;
    while (true) {
      const leftChildIndex = this.getLeftChildIndex(currentIndex);
      const rightChildIndex = this.getRightChildIndex(currentIndex);
      let largestIndex = currentIndex;
      
      if (leftChildIndex < this.heap.length && 
          this.compare(this.heap[leftChildIndex], this.heap[largestIndex])) {
        largestIndex = leftChildIndex;
      }
      
      if (rightChildIndex < this.heap.length && 
          this.compare(this.heap[rightChildIndex], this.heap[largestIndex])) {
        largestIndex = rightChildIndex;
      }
      
      if (largestIndex !== currentIndex) {
        this.swap(currentIndex, largestIndex);
        currentIndex = largestIndex;
      } else {
        break;
      }
    }
  }

  size() {
    return this.heap.length;
  }
}

// In-memory storage
let applications = [];
let applicationIdCounter = 1;

// Validate skill dependencies using Graph
const validateSkillDependencies = (selfAssessment, skillGraph) => {
  const graph = new Graph();
  
  // Build graph from job data
  Object.keys(skillGraph).forEach(vertex => {
    graph.addVertex(vertex);
    skillGraph[vertex].forEach(neighbor => {
      graph.addEdge(vertex, neighbor);
    });
  });

  // Validate: high-scored skills should have dependencies with reasonable scores
  for (const skill in selfAssessment) {
    const dependencies = graph.adjacencyList[skill] || [];
    const skillScore = selfAssessment[skill];

    if (skillScore > 7) {
      for (const dep of dependencies) {
        const depScore = selfAssessment[dep] || 0;
        if (depScore < 5) {
          return {
            valid: false,
            message: `Skill dependency inconsistency: ${skill} (${skillScore}) depends on ${dep} (${depScore})`
          };
        }
      }
    }
  }

  return { valid: true };
};

// Submit application with validation
const submitApplication = async (applicationData) => {
  try {
    // Get job details
    const job = await getJobById(applicationData.jobId);
    if (!job) {
      throw new Error('Job not found');
    }

    // Validate skill dependencies using Graph
    if (job.skillGraph) {
      const validation = validateSkillDependencies(
        applicationData.selfAssessment,
        job.skillGraph
      );
      
      if (!validation.valid) {
        throw new Error(validation.message);
      }
    }

    const application = {
      id: applicationIdCounter++,
      ...applicationData,
      submittedAt: new Date().toISOString()
    };

    if (supabase) {
      const { data, error } = await supabase
        .from('applications')
        .insert([{
          job_id: application.jobId,
          candidate_name: application.candidateName,
          candidate_email: application.candidateEmail,
          self_assessment: JSON.stringify(application.selfAssessment),
          test_score: application.testScore,
          test_results: JSON.stringify(application.testResults),
          submitted_at: application.submittedAt
        }])
        .select();

      if (error) throw error;
      return data[0];
    } else {
      applications.push(application);
      return application;
    }
  } catch (error) {
    console.error('Error submitting application:', error);
    throw error;
  }
};

// Get all applications
const getAllApplications = async (jobId = null) => {
  try {
    if (supabase) {
      let query = supabase.from('applications').select('*');
      if (jobId) {
        query = query.eq('job_id', jobId);
      }
      const { data, error } = await query;
      if (error) throw error;
      
      return data.map(app => ({
        ...app,
        selfAssessment: JSON.parse(app.self_assessment || '{}'),
        testResults: JSON.parse(app.test_results || '{}')
      }));
    } else {
      return jobId 
        ? applications.filter(app => app.jobId === parseInt(jobId))
        : applications;
    }
  } catch (error) {
    console.error('Error getting applications:', error);
    throw error;
  }
};

// Get application by ID
const getApplicationById = async (id) => {
  try {
    if (supabase) {
      const { data, error } = await supabase
        .from('applications')
        .select('*')
        .eq('id', id)
        .single();

      if (error) throw error;
      
      return {
        ...data,
        selfAssessment: JSON.parse(data.self_assessment || '{}'),
        testResults: JSON.parse(data.test_results || '{}')
      };
    } else {
      return applications.find(app => app.id === parseInt(id));
    }
  } catch (error) {
    console.error('Error getting application:', error);
    return null;
  }
};

// Rank candidates using MaxHeap
const rankCandidates = async (jobId, topN = 10) => {
  try {
    const job = await getJobById(jobId);
    const jobApplications = await getAllApplications(jobId);

    // Calculate scores and use MaxHeap to rank
    const heap = new MaxHeap((a, b) => a.totalScore > b.totalScore);

    jobApplications.forEach(app => {
      let totalScore = 0;
      let maxPossibleScore = 0;

      job.skills.forEach(skill => {
        const candidateScore = app.selfAssessment[skill.name] || 0;
        totalScore += candidateScore * skill.weight;
        maxPossibleScore += 10 * skill.weight;
      });

      if (app.testScore !== undefined) {
        totalScore += app.testScore * 5;
        maxPossibleScore += 100 * 5;
      }

      const percentage = (totalScore / maxPossibleScore) * 100;

      heap.insert({
        ...app,
        totalScore,
        maxPossibleScore,
        percentage: percentage.toFixed(2)
      });
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

    return topCandidates;
  } catch (error) {
    console.error('Error ranking candidates:', error);
    throw error;
  }
};

module.exports = {
  validateSkillDependencies,
  submitApplication,
  getAllApplications,
  getApplicationById,
  rankCandidates
};
