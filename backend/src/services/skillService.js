const supabase = require('../config/db');

// Manual LinkedList implementation for backend
class Node {
  constructor(data) {
    this.data = data;
    this.next = null;
  }
}

class LinkedList {
  constructor() {
    this.head = null;
    this.size = 0;
  }

  insert(data) {
    const newNode = new Node(data);
    if (!this.head) {
      this.head = newNode;
    } else {
      let current = this.head;
      while (current.next) {
        current = current.next;
      }
      current.next = newNode;
    }
    this.size++;
  }

  toArray() {
    const result = [];
    let current = this.head;
    while (current) {
      result.push(current.data);
      current = current.next;
    }
    return result;
  }
}

// In-memory storage (mock database)
let jobs = [];
let jobIdCounter = 1;

// Create a new job
const createJob = async (jobData) => {
  try {
    const job = {
      id: jobIdCounter++,
      ...jobData,
      createdAt: new Date().toISOString()
    };

    // Use LinkedList to store skills
    const skillsList = new LinkedList();
    jobData.skills.forEach(skill => skillsList.insert(skill));
    job.skillsList = skillsList;

    if (supabase) {
      // Save to Supabase
      const { data, error } = await supabase
        .from('jobs')
        .insert([{
          title: job.title,
          description: job.description,
          domain: job.domain,
          skills: JSON.stringify(job.skills),
          created_at: job.createdAt
        }])
        .select();

      if (error) throw error;
      return data[0];
    } else {
      // Use in-memory storage
      jobs.push(job);
      return job;
    }
  } catch (error) {
    console.error('Error creating job:', error);
    throw error;
  }
};

// Get all jobs
const getAllJobs = async (domain = null) => {
  try {
    if (supabase) {
      let query = supabase.from('jobs').select('*');
      if (domain) {
        query = query.eq('domain', domain);
      }
      const { data, error } = await query;
      if (error) throw error;
      
      return data.map(job => ({
        ...job,
        skills: JSON.parse(job.skills || '[]')
      }));
    } else {
      // Use in-memory storage
      return domain ? jobs.filter(job => job.domain === domain) : jobs;
    }
  } catch (error) {
    console.error('Error getting jobs:', error);
    throw error;
  }
};

// Get job by ID
const getJobById = async (id) => {
  try {
    if (supabase) {
      const { data, error } = await supabase
        .from('jobs')
        .select('*')
        .eq('id', id)
        .single();

      if (error) throw error;
      
      return {
        ...data,
        skills: JSON.parse(data.skills || '[]')
      };
    } else {
      // Use in-memory storage
      return jobs.find(job => job.id === parseInt(id));
    }
  } catch (error) {
    console.error('Error getting job:', error);
    return null;
  }
};

// Update job
const updateJob = async (id, jobData) => {
  try {
    if (supabase) {
      const { data, error } = await supabase
        .from('jobs')
        .update({
          title: jobData.title,
          description: jobData.description,
          domain: jobData.domain,
          skills: JSON.stringify(jobData.skills)
        })
        .eq('id', id)
        .select();

      if (error) throw error;
      return data[0];
    } else {
      // Use in-memory storage
      const index = jobs.findIndex(job => job.id === parseInt(id));
      if (index !== -1) {
        jobs[index] = { ...jobs[index], ...jobData };
        return jobs[index];
      }
      return null;
    }
  } catch (error) {
    console.error('Error updating job:', error);
    throw error;
  }
};

// Delete job
const deleteJob = async (id) => {
  try {
    if (supabase) {
      const { error } = await supabase
        .from('jobs')
        .delete()
        .eq('id', id);

      if (error) throw error;
      return true;
    } else {
      // Use in-memory storage
      const index = jobs.findIndex(job => job.id === parseInt(id));
      if (index !== -1) {
        jobs.splice(index, 1);
        return true;
      }
      return false;
    }
  } catch (error) {
    console.error('Error deleting job:', error);
    throw error;
  }
};

module.exports = {
  createJob,
  getAllJobs,
  getJobById,
  updateJob,
  deleteJob
};
