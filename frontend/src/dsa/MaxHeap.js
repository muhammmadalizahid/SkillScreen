// Manual Max-Heap Implementation
// Used for candidate ranking (top-N selection)

class MaxHeap {
  constructor(compareFn = null) {
    this.heap = [];
    // Custom compare function: should return true if a > b
    this.compare = compareFn || ((a, b) => a > b);
  }

  // Get parent index
  getParentIndex(index) {
    return Math.floor((index - 1) / 2);
  }

  // Get left child index
  getLeftChildIndex(index) {
    return 2 * index + 1;
  }

  // Get right child index
  getRightChildIndex(index) {
    return 2 * index + 2;
  }

  // Swap two elements
  swap(index1, index2) {
    const temp = this.heap[index1];
    this.heap[index1] = this.heap[index2];
    this.heap[index2] = temp;
  }

  // Insert element into heap
  insert(value) {
    this.heap.push(value);
    this.heapifyUp(this.heap.length - 1);
  }

  // Heapify up (bubble up)
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

  // Extract maximum element
  extractMax() {
    if (this.heap.length === 0) {
      return null;
    }
    
    if (this.heap.length === 1) {
      return this.heap.pop();
    }
    
    const max = this.heap[0];
    this.heap[0] = this.heap.pop();
    this.heapifyDown(0);
    
    return max;
  }

  // Heapify down (bubble down)
  heapifyDown(index) {
    let currentIndex = index;
    
    while (true) {
      const leftChildIndex = this.getLeftChildIndex(currentIndex);
      const rightChildIndex = this.getRightChildIndex(currentIndex);
      let largestIndex = currentIndex;
      
      if (
        leftChildIndex < this.heap.length &&
        this.compare(this.heap[leftChildIndex], this.heap[largestIndex])
      ) {
        largestIndex = leftChildIndex;
      }
      
      if (
        rightChildIndex < this.heap.length &&
        this.compare(this.heap[rightChildIndex], this.heap[largestIndex])
      ) {
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

  // Peek at maximum element
  peek() {
    return this.heap.length > 0 ? this.heap[0] : null;
  }

  // Get heap size
  size() {
    return this.heap.length;
  }

  // Check if heap is empty
  isEmpty() {
    return this.heap.length === 0;
  }

  // Build heap from array
  buildHeap(array) {
    this.heap = [...array];
    
    // Start from last non-leaf node
    for (let i = Math.floor(this.heap.length / 2) - 1; i >= 0; i--) {
      this.heapifyDown(i);
    }
  }

  // Get all elements (for display purposes)
  toArray() {
    return [...this.heap];
  }

  // Clear the heap
  clear() {
    this.heap = [];
  }
}

export default MaxHeap;
