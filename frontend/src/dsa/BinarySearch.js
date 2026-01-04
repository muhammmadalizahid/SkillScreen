// Binary Search - searches through sorted data efficiently
// Works best on sorted arrays

class BinarySearch {
  // Find items that match the search query
  static search(sortedArray, query, fields = [], sortField = 'title') {
    if (!query || !sortedArray || sortedArray.length === 0) {
      return sortedArray || [];
    }

    const searchTerm = query.toLowerCase().trim();
    const results = [];

    // Check each item to see if it matches
    for (let i = 0; i < sortedArray.length; i++) {
      const item = sortedArray[i];
      
      // Check if any field contains the search term
      const matches = fields.some(field => {
        const value = item[field];
        if (typeof value === 'string') {
          return value.toLowerCase().includes(searchTerm);
        }
        return false;
      });

      if (matches) {
        results.push(item);
      }
    }

    return results;
  }

  // Find an exact match using true binary search
  static exactSearch(sortedArray, target, field = 'title') {
    if (!sortedArray || sortedArray.length === 0) {
      return null;
    }

    let left = 0;
    let right = sortedArray.length - 1;
    const searchTarget = target.toLowerCase();

    while (left <= right) {
      const mid = Math.floor((left + right) / 2);
      const midValue = sortedArray[mid][field]?.toLowerCase() || '';

      if (midValue === searchTarget) {
        return sortedArray[mid];
      }

      if (midValue < searchTarget) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return null;
  }

  // Find all items within a range (e.g., jobs starting with A-M)
  static rangeSearch(sortedArray, start, end, field = 'title') {
    if (!sortedArray || sortedArray.length === 0) {
      return [];
    }

    const results = [];
    const startLower = start.toLowerCase();
    const endLower = end.toLowerCase();

    for (const item of sortedArray) {
      const value = item[field]?.toLowerCase() || '';
      if (value >= startLower && value <= endLower) {
        results.push(item);
      } else if (value > endLower) {
        break; // Since array is sorted, no need to continue
      }
    }

    return results;
  }
}

export default BinarySearch;
