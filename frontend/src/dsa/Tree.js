// Manual Binary Tree Implementation
// Used for MCQ question bank hierarchy

class TreeNode {
  constructor(data) {
    this.data = data;
    this.left = null;
    this.right = null;
  }
}

class BinaryTree {
  constructor() {
    this.root = null;
  }

  // Insert node
  insert(data) {
    const newNode = new TreeNode(data);
    
    if (!this.root) {
      this.root = newNode;
      return;
    }
    
    // Use level-order insertion (complete binary tree)
    const queue = [this.root];
    
    while (queue.length > 0) {
      const current = queue.shift();
      
      if (!current.left) {
        current.left = newNode;
        return;
      } else {
        queue.push(current.left);
      }
      
      if (!current.right) {
        current.right = newNode;
        return;
      } else {
        queue.push(current.right);
      }
    }
  }

  // In-order traversal (Left, Root, Right)
  inOrder(node = this.root, result = []) {
    if (node) {
      this.inOrder(node.left, result);
      result.push(node.data);
      this.inOrder(node.right, result);
    }
    return result;
  }

  // Pre-order traversal (Root, Left, Right)
  preOrder(node = this.root, result = []) {
    if (node) {
      result.push(node.data);
      this.preOrder(node.left, result);
      this.preOrder(node.right, result);
    }
    return result;
  }

  // Post-order traversal (Left, Right, Root)
  postOrder(node = this.root, result = []) {
    if (node) {
      this.postOrder(node.left, result);
      this.postOrder(node.right, result);
      result.push(node.data);
    }
    return result;
  }

  // Level-order traversal (BFS)
  levelOrder() {
    if (!this.root) {
      return [];
    }
    
    const result = [];
    const queue = [this.root];
    
    while (queue.length > 0) {
      const current = queue.shift();
      result.push(current.data);
      
      if (current.left) {
        queue.push(current.left);
      }
      if (current.right) {
        queue.push(current.right);
      }
    }
    
    return result;
  }

  // Search for a value
  search(data, node = this.root) {
    if (!node) {
      return false;
    }
    
    if (node.data === data) {
      return true;
    }
    
    return this.search(data, node.left) || this.search(data, node.right);
  }

  // Get height of tree
  getHeight(node = this.root) {
    if (!node) {
      return -1;
    }
    
    const leftHeight = this.getHeight(node.left);
    const rightHeight = this.getHeight(node.right);
    
    return Math.max(leftHeight, rightHeight) + 1;
  }

  // Count nodes
  countNodes(node = this.root) {
    if (!node) {
      return 0;
    }
    
    return 1 + this.countNodes(node.left) + this.countNodes(node.right);
  }

  // Check if tree is empty
  isEmpty() {
    return this.root === null;
  }

  // Clear the tree
  clear() {
    this.root = null;
  }
}

// Binary Search Tree (for sorted data)
class BinarySearchTree {
  constructor() {
    this.root = null;
  }

  // Insert node (BST property maintained)
  insert(data) {
    const newNode = new TreeNode(data);
    
    if (!this.root) {
      this.root = newNode;
      return;
    }
    
    this.insertNode(this.root, newNode);
  }

  insertNode(node, newNode) {
    if (newNode.data < node.data) {
      if (!node.left) {
        node.left = newNode;
      } else {
        this.insertNode(node.left, newNode);
      }
    } else {
      if (!node.right) {
        node.right = newNode;
      } else {
        this.insertNode(node.right, newNode);
      }
    }
  }

  // Search in BST
  search(data, node = this.root) {
    if (!node) {
      return false;
    }
    
    if (data === node.data) {
      return true;
    }
    
    if (data < node.data) {
      return this.search(data, node.left);
    } else {
      return this.search(data, node.right);
    }
  }

  // In-order traversal (gives sorted order)
  inOrder(node = this.root, result = []) {
    if (node) {
      this.inOrder(node.left, result);
      result.push(node.data);
      this.inOrder(node.right, result);
    }
    return result;
  }

  // Find minimum value
  findMin(node = this.root) {
    if (!node) {
      return null;
    }
    
    while (node.left) {
      node = node.left;
    }
    
    return node.data;
  }

  // Find maximum value
  findMax(node = this.root) {
    if (!node) {
      return null;
    }
    
    while (node.right) {
      node = node.right;
    }
    
    return node.data;
  }

  // Clear the tree
  clear() {
    this.root = null;
  }
}

export { BinaryTree, BinarySearchTree };
export default BinaryTree;
