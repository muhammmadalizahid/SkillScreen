/**
 * Graph Data Structure using Adjacency List
 * For representing job networks and finding related jobs
 */

class Graph {
  constructor() {
    this.adjacencyList = {};
  }

  /**
   * Add a vertex to the graph
   */
  addVertex(vertex) {
    if (!this.adjacencyList[vertex]) {
      this.adjacencyList[vertex] = [];
    }
  }

  /**
   * Add an edge between two vertices with optional weight
   */
  addEdge(source, destination, weight = 1) {
    if (!this.adjacencyList[source]) {
      this.addVertex(source);
    }
    if (!this.adjacencyList[destination]) {
      this.addVertex(destination);
    }

    // Add destination to source's adjacency list with weight
    const existingEdge = this.adjacencyList[source].find(
      edge => typeof edge === 'object' ? edge.node === destination : edge === destination
    );
    
    if (!existingEdge) {
      this.adjacencyList[source].push({ node: destination, weight });
    }
  }

  /**
   * Add undirected edge (for job network)
   */
  addUndirectedEdge(vertex1, vertex2, weight = 1) {
    this.addEdge(vertex1, vertex2, weight);
    this.addEdge(vertex2, vertex1, weight);
  }

  /**
   * Get all neighbors of a vertex
   */
  getNeighbors(vertex) {
    const neighbors = this.adjacencyList[vertex] || [];
    // Normalize to always return array of objects with node and weight
    return neighbors.map(n => 
      typeof n === 'object' ? n : { node: n, weight: 1 }
    );
  }

  /**
   * BFS with depth limit for finding similar jobs
   */
  bfsWithDepth(startVertex, maxDepth = 2) {
    if (!this.adjacencyList[startVertex]) {
      return [];
    }

    const visited = {};
    const queue = [{ vertex: startVertex, depth: 0 }];
    const result = [];

    visited[startVertex] = true;

    while (queue.length > 0) {
      const { vertex, depth, weight } = queue.shift();

      // Don't include the starting vertex in results
      if (vertex !== startVertex) {
        result.push({ vertex, depth, weight: weight || 1 });
      }

      // Stop if we've reached max depth
      if (depth >= maxDepth) {
        continue;
      }

      const neighbors = this.getNeighbors(vertex);
      for (let i = 0; i < neighbors.length; i++) {
        const neighbor = neighbors[i];
        const neighborNode = typeof neighbor === 'object' ? neighbor.node : neighbor;
        const edgeWeight = typeof neighbor === 'object' ? neighbor.weight : 1;
        
        if (!visited[neighborNode]) {
          visited[neighborNode] = true;
          queue.push({ 
            vertex: neighborNode, 
            depth: depth + 1,
            weight: edgeWeight
          });
        }
      }
    }

    return result;
  }

  /**
   * DFS traversal
   */
  dfs(startVertex) {
    if (!this.adjacencyList[startVertex]) {
      return [];
    }

    const visited = {};
    const result = [];

    const dfsHelper = (vertex) => {
      visited[vertex] = true;
      result.push(vertex);

      const neighbors = this.getNeighbors(vertex);
      for (let i = 0; i < neighbors.length; i++) {
        const neighbor = neighbors[i];
        const neighborNode = typeof neighbor === 'object' ? neighbor.node : neighbor;
        
        if (!visited[neighborNode]) {
          dfsHelper(neighborNode);
        }
      }
    };

    dfsHelper(startVertex);
    return result;
  }

  /**
   * Check if vertex exists
   */
  hasVertex(vertex) {
    return this.adjacencyList.hasOwnProperty(vertex);
  }

  /**
   * Get all vertices
   */
  getVertices() {
    return Object.keys(this.adjacencyList);
  }

  /**
   * Get graph statistics
   */
  getStats() {
    let totalEdges = 0;
    let maxDegree = 0;
    
    for (const vertex in this.adjacencyList) {
      const degree = this.adjacencyList[vertex].length;
      totalEdges += degree;
      maxDegree = Math.max(maxDegree, degree);
    }

    const vertexCount = this.getVertices().length;

    return {
      vertices: vertexCount,
      edges: totalEdges / 2, // Divide by 2 for undirected graph
      avgDegree: vertexCount > 0 ? (totalEdges / vertexCount).toFixed(2) : 0,
      maxDegree
    };
  }

  /**
   * Clear the entire graph
   */
  clear() {
    this.adjacencyList = {};
  }

  /**
   * Print graph for debugging
   */
  print() {
    for (const vertex in this.adjacencyList) {
      const neighbors = this.adjacencyList[vertex];
      const neighborStr = neighbors.map(n => 
        typeof n === 'object' ? `${n.node}(w:${n.weight})` : n
      ).join(', ');
      console.log(`${vertex} -> ${neighborStr}`);
    }
  }
}

module.exports = Graph;
