/**
 * Job Network Graph Service
 * Builds a graph of job relationships based on:
 * 1. Jobs in the same domain (weight: 3)
 * 2. Jobs in related domains (weight: 2)
 * 3. No connection for unrelated domains
 */

const Graph = require('../utils/Graph');
const databaseService = require('./databaseService');

class JobGraphService {
  constructor() {
    this.graph = new Graph();
    this.lastBuilt = null;
    this.cacheTimeout = 5 * 60 * 1000; // Rebuild cache every 5 minutes
    
    // Static domain relationships - predefined connections between domains
    this.domainRelationships = {
      'Web Development': ['Software Engineering'],
      'Software Engineering': ['Web Development', 'DevOps', 'Data Science'],
      'Cybersecurity': ['DevOps', 'Software Engineering'],
      'AI/ML': ['Data Science', 'Software Engineering'],
      'DevOps': ['Software Engineering', 'Cybersecurity'],
      'Data Science': ['AI/ML', 'Software Engineering']
    };
  }

  /**
   * Build the job network graph from database
   */
  async buildJobGraph() {
    try {
      console.log('Building job network graph with domain relationships...');
      this.graph.clear();

      const jobs = await databaseService.getAllJobs();

      if (!jobs || jobs.length === 0) {
        console.log('No jobs found, graph is empty');
        return this.graph;
      }

      // Step 1: Add all jobs as vertices
      jobs.forEach(job => {
        this.graph.addVertex(job.id);
      });

      // Step 2: Group jobs by domain
      const jobsByDomain = {};
      jobs.forEach(job => {
        const domainName = job.domains?.name || job.domain || 'General';
        if (!jobsByDomain[domainName]) {
          jobsByDomain[domainName] = [];
        }
        jobsByDomain[domainName].push(job.id);
      });

      console.log('Jobs grouped by domain:', Object.keys(jobsByDomain).map(domain => 
        `${domain}: ${jobsByDomain[domain].length} jobs`
      ));

      // Step 3: Connect jobs in the same domain (weight: 3 - strongest relationship)
      Object.entries(jobsByDomain).forEach(([domainName, domainJobs]) => {
        for (let i = 0; i < domainJobs.length; i++) {
          for (let j = i + 1; j < domainJobs.length; j++) {
            this.graph.addUndirectedEdge(domainJobs[i], domainJobs[j], 3);
          }
        }
      });

      // Step 4: Connect jobs in related domains (weight: 2 - moderate relationship)
      Object.entries(jobsByDomain).forEach(([domainName, domainJobs]) => {
        const relatedDomains = this.domainRelationships[domainName] || [];
        
        relatedDomains.forEach(relatedDomain => {
          const relatedJobs = jobsByDomain[relatedDomain] || [];
          
          // Connect each job in current domain to each job in related domain
          domainJobs.forEach(jobId1 => {
            relatedJobs.forEach(jobId2 => {
              this.graph.addUndirectedEdge(jobId1, jobId2, 2);
            });
          });
        });
      });

      this.lastBuilt = new Date();
      const stats = this.graph.getStats();
      console.log('Job graph built successfully:', stats);
      console.log('Domain relationships applied:', Object.keys(this.domainRelationships).length);

      return this.graph;
    } catch (error) {
      console.error('Error building job graph:', error);
      throw error;
    }
  }

  /**
   * Get the job graph, rebuilding if cache is expired
   */
  async getJobGraph() {
    const now = new Date();
    if (!this.lastBuilt || (now - this.lastBuilt) > this.cacheTimeout) {
      await this.buildJobGraph();
    }
    return this.graph;
  }

  /**
   * Find similar jobs using BFS traversal
   * @param {string} jobId - The job ID to find similar jobs for
   * @param {number} maxDepth - Maximum depth to traverse (default: 2)
   * @param {number} limit - Maximum number of results (default: 5)
   */
  async findSimilarJobs(jobId, maxDepth = 2, limit = 5) {
    try {
      const graph = await this.getJobGraph();

      if (!graph.hasVertex(jobId)) {
        console.log(`Job ${jobId} not found in graph`);
        return [];
      }

      // Use BFS with depth limit
      const similarJobNodes = graph.bfsWithDepth(jobId, maxDepth);

      // Sort by depth (closer jobs first) and limit results
      const sortedJobs = similarJobNodes
        .sort((a, b) => {
          if (a.depth !== b.depth) {
            return a.depth - b.depth;
          }
          // If same depth, prioritize higher weight (stronger connection)
          return (b.weight || 1) - (a.weight || 1);
        })
        .slice(0, limit);

      // Fetch full job details
      const jobIds = sortedJobs.map(node => node.vertex);
      const jobDetails = await databaseService.getJobsByIds(jobIds);

      // Map jobs with their similarity scores
      // Weight 3 = same domain = 100% match
      // Weight 2 = related domain = 70% match
      // Weight 1 = indirect = 40% match
      return jobDetails.map(job => {
        const node = sortedJobs.find(n => n.vertex === job.id);
        const weight = node.weight || 1;
        
        // Calculate match percentage based on weight
        let matchPercentage;
        if (weight === 3) {
          matchPercentage = 100; // Same domain
        } else if (weight === 2) {
          matchPercentage = 70;  // Related domain
        } else {
          matchPercentage = 40;  // Indirect connection
        }
        
        // Reduce match percentage slightly for deeper connections
        if (node.depth === 2) {
          matchPercentage = Math.max(40, matchPercentage - 20);
        }
        
        return {
          ...job,
          similarity: {
            depth: node.depth,
            weight: weight,
            matchPercentage: matchPercentage
          }
        };
      });
    } catch (error) {
      console.error('Error finding similar jobs:', error);
      throw error;
    }
  }

  /**
   * Force rebuild the graph (useful for admin actions)
   */
  async rebuildGraph() {
    return await this.buildJobGraph();
  }

  /**
   * Get graph statistics
   */
  async getGraphStats() {
    const graph = await this.getJobGraph();
    return {
      ...graph.getStats(),
      lastBuilt: this.lastBuilt,
      cacheTimeout: this.cacheTimeout,
      domainRelationships: this.domainRelationships
    };
  }
}

// Export singleton instance
module.exports = new JobGraphService();
