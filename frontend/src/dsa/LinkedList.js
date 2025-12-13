// Manual LinkedList Implementation
// Used for job skills management

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

  // Insert at the end
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

  // Insert at the beginning
  insertAtBeginning(data) {
    const newNode = new Node(data);
    newNode.next = this.head;
    this.head = newNode;
    this.size++;
  }

  // Delete by value
  delete(data) {
    if (!this.head) return false;

    // If head needs to be deleted
    if (this.head.data === data) {
      this.head = this.head.next;
      this.size--;
      return true;
    }

    let current = this.head;
    while (current.next) {
      if (current.next.data === data) {
        current.next = current.next.next;
        this.size--;
        return true;
      }
      current = current.next;
    }
    return false;
  }

  // Search for a value
  search(data) {
    let current = this.head;
    while (current) {
      if (current.data === data) return true;
      current = current.next;
    }
    return false;
  }

  // Get all elements as array (for display purposes only)
  toArray() {
    const result = [];
    let current = this.head;
    while (current) {
      result.push(current.data);
      current = current.next;
    }
    return result;
  }

  // Traverse and apply callback
  traverse(callback) {
    let current = this.head;
    let index = 0;
    while (current) {
      callback(current.data, index);
      current = current.next;
      index++;
    }
  }

  // Get element at index
  getAt(index) {
    if (index < 0 || index >= this.size) return null;
    
    let current = this.head;
    let count = 0;
    while (current) {
      if (count === index) return current.data;
      current = current.next;
      count++;
    }
    return null;
  }

  // Clear the list
  clear() {
    this.head = null;
    this.size = 0;
  }

  // Get size
  getSize() {
    return this.size;
  }

  // Check if empty
  isEmpty() {
    return this.size === 0;
  }
}

export default LinkedList;
