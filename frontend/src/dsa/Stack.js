// Manual Stack Implementation
// Used for MCQ undo functionality

class StackNode {
  constructor(data) {
    this.data = data;
    this.next = null;
  }
}

class Stack {
  constructor() {
    this.top = null;
    this.size = 0;
  }

  // Push element onto stack
  push(data) {
    const newNode = new StackNode(data);
    newNode.next = this.top;
    this.top = newNode;
    this.size++;
  }

  // Pop element from stack
  pop() {
    if (this.isEmpty()) {
      return null;
    }
    
    const data = this.top.data;
    this.top = this.top.next;
    this.size--;
    return data;
  }

  // Peek at top element without removing
  peek() {
    if (this.isEmpty()) {
      return null;
    }
    return this.top.data;
  }

  // Check if stack is empty
  isEmpty() {
    return this.size === 0;
  }

  // Get stack size
  getSize() {
    return this.size;
  }

  // Clear the stack
  clear() {
    this.top = null;
    this.size = 0;
  }

  // Convert to array (for display purposes only)
  toArray() {
    const result = [];
    let current = this.top;
    while (current) {
      result.push(current.data);
      current = current.next;
    }
    return result;
  }
}

export default Stack;
