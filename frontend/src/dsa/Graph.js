// Manual Graph Implementation (Adjacency List)
// Used for skill dependency validation

class Graph {
  constructor() {
    this.adjacencyList = {};
  }

  // Add vertex
  addVertex(vertex) {
    if (!this.adjacencyList[vertex]) {
      this.adjacencyList[vertex] = [];
    }
  }

  // Add edge (directed)
  addEdge(source, destination) {
    if (!this.adjacencyList[source]) {
      this.addVertex(source);
    }
    if (!this.adjacencyList[destination]) {
      this.addVertex(destination);
    }
    
    // Add destination to source's adjacency list
    if (!this.adjacencyList[source].includes(destination)) {
      this.adjacencyList[source].push(destination);
    }
  }

  // Add undirected edge
  addUndirectedEdge(vertex1, vertex2) {
    this.addEdge(vertex1, vertex2);
    this.addEdge(vertex2, vertex1);
  }

  // Remove edge
  removeEdge(source, destination) {
    if (this.adjacencyList[source]) {
      const index = this.adjacencyList[source].indexOf(destination);
      if (index !== -1) {
        this.adjacencyList[source].splice(index, 1);
      }
    }
  }

  // Remove vertex
  removeVertex(vertex) {
    if (!this.adjacencyList[vertex]) {
      return;
    }
    
    // Remove all edges to this vertex
    for (const adjacentVertex in this.adjacencyList) {
      this.removeEdge(adjacentVertex, vertex);
    }
    
    // Remove the vertex itself
    delete this.adjacencyList[vertex];
  }

  // Get neighbors
  getNeighbors(vertex) {
    return this.adjacencyList[vertex] || [];
  }

  // BFS traversal
  bfs(startVertex, callback = null) {
    if (!this.adjacencyList[startVertex]) {
      return [];
    }
    
    const visited = {};
    const queue = [startVertex];
    const result = [];
    
    visited[startVertex] = true;
    
    while (queue.length > 0) {
      const currentVertex = queue.shift();
      result.push(currentVertex);
      
      if (callback) {
        callback(currentVertex);
      }
      
      const neighbors = this.adjacencyList[currentVertex];
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

  // DFS traversal (recursive)
  dfs(startVertex, callback = null) {
    if (!this.adjacencyList[startVertex]) {
      return [];
    }
    
    const visited = {};
    const result = [];
    
    const dfsHelper = (vertex) => {
      visited[vertex] = true;
      result.push(vertex);
      
      if (callback) {
        callback(vertex);
      }
      
      const neighbors = this.adjacencyList[vertex];
      for (let i = 0; i < neighbors.length; i++) {
        const neighbor = neighbors[i];
        if (!visited[neighbor]) {
          dfsHelper(neighbor);
        }
      }
    };
    
    dfsHelper(startVertex);
    return result;
  }

  // Check if path exists between two vertices
  hasPath(source, destination) {
    if (!this.adjacencyList[source] || !this.adjacencyList[destination]) {
      return false;
    }
    
    const visited = {};
    const queue = [source];
    visited[source] = true;
    
    while (queue.length > 0) {
      const currentVertex = queue.shift();
      
      if (currentVertex === destination) {
        return true;
      }
      
      const neighbors = this.adjacencyList[currentVertex];
      for (let i = 0; i < neighbors.length; i++) {
        const neighbor = neighbors[i];
        if (!visited[neighbor]) {
          visited[neighbor] = true;
          queue.push(neighbor);
        }
      }
    }
    
    return false;
  }

  // Detect cycle (for directed graph)
  hasCycle() {
    const visited = {};
    const recursionStack = {};
    
    const hasCycleHelper = (vertex) => {
      visited[vertex] = true;
      recursionStack[vertex] = true;
      
      const neighbors = this.adjacencyList[vertex];
      for (let i = 0; i < neighbors.length; i++) {
        const neighbor = neighbors[i];
        
        if (!visited[neighbor]) {
          if (hasCycleHelper(neighbor)) {
            return true;
          }
        } else if (recursionStack[neighbor]) {
          return true;
        }
      }
      
      recursionStack[vertex] = false;
      return false;
    };
    
    for (const vertex in this.adjacencyList) {
      if (!visited[vertex]) {
        if (hasCycleHelper(vertex)) {
          return true;
        }
      }
    }
    
    return false;
  }

  // Topological sort (for DAG - Directed Acyclic Graph)
  topologicalSort() {
    const visited = {};
    const stack = [];
    
    const topologicalSortHelper = (vertex) => {
      visited[vertex] = true;
      
      const neighbors = this.adjacencyList[vertex];
      for (let i = 0; i < neighbors.length; i++) {
        const neighbor = neighbors[i];
        if (!visited[neighbor]) {
          topologicalSortHelper(neighbor);
        }
      }
      
      stack.push(vertex);
    };
    
    for (const vertex in this.adjacencyList) {
      if (!visited[vertex]) {
        topologicalSortHelper(vertex);
      }
    }
    
    return stack.reverse();
  }

  // Get all vertices
  getVertices() {
    return Object.keys(this.adjacencyList);
  }

  // Get number of vertices
  getVertexCount() {
    return Object.keys(this.adjacencyList).length;
  }

  // Check if vertex exists
  hasVertex(vertex) {
    return this.adjacencyList.hasOwnProperty(vertex);
  }

  // Clear the graph
  clear() {
    this.adjacencyList = {};
  }
}

export default Graph;
