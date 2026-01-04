// Heap Sort - sorting using binary heap (tree structure)
// Uses max heap for descending, min heap for ascending

class HeapSort {
  // Sort items by a specific field
  static sort(items, field, order = 'asc') {
    if (!items || items.length <= 1) {
      return items;
    }

    // Make a copy so we don't change the original array
    const arr = [...items];
    
    // Use heap sort algorithm
    this.heapSort(arr, field, order);
    
    return arr;
  }

  // Main heap sort algorithm
  static heapSort(arr, field, order) {
    const n = arr.length;
    
    // Build heap (rearrange array into max heap)
    for (let i = Math.floor(n / 2) - 1; i >= 0; i--) {
      this.heapify(arr, n, i, field, order);
    }
    
    // Extract elements from heap one by one
    for (let i = n - 1; i > 0; i--) {
      // Move current root to end
      [arr[0], arr[i]] = [arr[i], arr[0]];
      
      // Call heapify on reduced heap
      this.heapify(arr, i, 0, field, order);
    }
  }

  // Heapify a subtree with root at given index
  static heapify(arr, heapSize, rootIndex, field, order) {
    let largest = rootIndex;
    const left = 2 * rootIndex + 1;
    const right = 2 * rootIndex + 2;
    
    // Check if left child is larger than root
    if (left < heapSize) {
      const comparison = this.compare(
        this.getValue(arr[left], field),
        this.getValue(arr[largest], field)
      );
      
      if ((order === 'asc' && comparison > 0) || (order === 'desc' && comparison < 0)) {
        largest = left;
      }
    }
    
    // Check if right child is larger than largest so far
    if (right < heapSize) {
      const comparison = this.compare(
        this.getValue(arr[right], field),
        this.getValue(arr[largest], field)
      );
      
      if ((order === 'asc' && comparison > 0) || (order === 'desc' && comparison < 0)) {
        largest = right;
      }
    }
    
    // If largest is not root, swap and continue heapifying
    if (largest !== rootIndex) {
      [arr[rootIndex], arr[largest]] = [arr[largest], arr[rootIndex]];
      this.heapify(arr, heapSize, largest, field, order);
    }
  }

  // Get a value from an object (handles nested properties)
  static getValue(obj, field) {
    const keys = field.split('.');
    let value = obj;

    for (let i = 0; i < keys.length; i++) {
      if (value && typeof value === 'object') {
        value = value[keys[i]];
      } else {
        return null;
      }
    }

    return value;
  }

  // Compare two values (handles strings, numbers, dates)
  static compare(a, b) {
    if (a === null || a === undefined) return -1;
    if (b === null || b === undefined) return 1;

    const valA = typeof a === 'string' ? a.toLowerCase() : a;
    const valB = typeof b === 'string' ? b.toLowerCase() : b;

    if (valA < valB) return -1;
    if (valA > valB) return 1;
    return 0;
  }

  // Sort by multiple fields in priority order
  static multiSort(items, sortCriteria) {
    if (!items || items.length <= 1) {
      return items;
    }

    const arr = [...items];

    arr.sort((a, b) => {
      for (let i = 0; i < sortCriteria.length; i++) {
        const { field, order } = sortCriteria[i];
        const valA = this.getValue(a, field);
        const valB = this.getValue(b, field);
        
        const comparison = this.compare(valA, valB);
        
        if (comparison !== 0) {
          return order === 'asc' ? comparison : -comparison;
        }
      }
      return 0;
    });

    return arr;
  }
}

export default HeapSort;
