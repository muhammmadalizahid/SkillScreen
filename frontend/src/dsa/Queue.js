// Manual Queue Implementation
// Used for question delivery (FIFO)

class QueueNode {
  constructor(data) {
    this.data = data;
    this.next = null;
  }
}

class Queue {
  constructor() {
    this.front = null;
    this.rear = null;
    this.size = 0;
  }

  // Enqueue (add to rear)
  enqueue(data) {
    const newNode = new QueueNode(data);
    
    if (this.isEmpty()) {
      this.front = newNode;
      this.rear = newNode;
    } else {
      this.rear.next = newNode;
      this.rear = newNode;
    }
    this.size++;
  }

  // Dequeue (remove from front)
  dequeue() {
    if (this.isEmpty()) {
      return null;
    }
    
    const data = this.front.data;
    this.front = this.front.next;
    
    if (!this.front) {
      this.rear = null;
    }
    
    this.size--;
    return data;
  }

  // Peek at front element
  peek() {
    if (this.isEmpty()) {
      return null;
    }
    return this.front.data;
  }

  // Check if queue is empty
  isEmpty() {
    return this.size === 0;
  }

  // Get queue size
  getSize() {
    return this.size;
  }

  // Clear the queue
  clear() {
    this.front = null;
    this.rear = null;
    this.size = 0;
  }

  // Convert to array (for display purposes only)
  toArray() {
    const result = [];
    let current = this.front;
    while (current) {
      result.push(current.data);
      current = current.next;
    }
    return result;
  }
}

export default Queue;
