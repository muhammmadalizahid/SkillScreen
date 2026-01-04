# SkillScreen - Technical Documentation

## Table of Contents
1. [Project Overview](#project-overview)
2. [Architecture & Stack](#architecture--stack)
3. [File Structure & Interactions](#file-structure--interactions)
4. [Data Structures Implementation](#data-structures-implementation)
5. [Frontend-Backend Communication](#frontend-backend-communication)
6. [How the Code Works](#how-the-code-works)

---

## Project Overview

SkillScreen is a job screening platform that uses custom data structure implementations for optimal performance. The platform allows recruiters to post jobs, candidates to apply, and includes an automated technical assessment system.

**Key Features:**
- Job posting and management
- Smart job recommendations using graph algorithms
- Technical assessment delivery
- Candidate ranking and evaluation
- Skills-based job matching
- Binary search for efficient job filtering

---

## Architecture & Stack

### Frontend
- **Framework:** React 18
- **Styling:** Tailwind CSS
- **Build Tool:** Vite
- **Routing:** React Router
- **HTTP Client:** Axios
- **Port:** 5173

### Backend
- **Runtime:** Node.js
- **Framework:** Express.js
- **Database:** Supabase (PostgreSQL)
- **Authentication:** Google OAuth
- **Port:** 3000

### Database Tables
- `jobs` - Job postings
- `domains` - Technical domains (Web Dev, AI/ML, etc.)
- `applications` - Candidate applications
- `candidates` - Candidate profiles
- `test_results` - Assessment scores
- `test_sessions` - Active test sessions
- `question_bank` - Technical questions
- `users` - User accounts

---

## File Structure & Interactions

### Frontend Structure
```
frontend/src/
├── components/         # Reusable UI components
│   ├── ConfirmDialog.jsx      # Confirmation modal
│   ├── SimilarJobs.jsx        # Job recommendations sidebar
│   └── ...
├── dsa/               # Data structure implementations
│   ├── BinarySearch.js        # Binary search algorithm
│   ├── HeapSort.js            # Heap sort algorithm (tree-based)
│   ├── LinkedList.js          # Linked list for skills
│   ├── Stack.js               # Stack for answer management
│   ├── Queue.js               # Queue for question delivery
│   ├── MaxHeap.js             # Max heap for candidate ranking
│   ├── Graph.js               # Graph for job network
│   └── Tree.js                # Tree structure (not used yet)
├── pages/             # Main application pages
│   ├── Home.jsx               # Landing page
│   ├── Jobs.jsx               # Job listings
│   ├── Apply.jsx              # Job application page
│   ├── Dashboard.jsx          # Recruiter dashboard
│   ├── Test.jsx               # Assessment page
│   └── Results.jsx            # Test results
├── services/          # API communication
│   └── api.js                 # All API calls
└── utils/             # Helper functions
    └── dataTransformers.js    # Data formatting

```

### Backend Structure
```
backend/src/
├── controllers/       # Request handlers
│   ├── authController.js      # Authentication logic
│   ├── jobController.js       # Job CRUD operations
│   ├── testController.js      # Assessment logic
│   └── ...
├── routes/            # API endpoints
│   ├── authRoutes.js          # /api/auth/*
│   ├── jobRoutes.js           # /api/jobs/*
│   ├── testRoutes.js          # /api/test/*
│   └── ...
├── services/          # Business logic
│   ├── databaseService.js     # Database queries
│   ├── jobGraphService.js     # Job network graph
│   └── testService.js         # Test management
├── utils/             # Backend data structures
│   ├── Graph.js               # Graph implementation
│   ├── LinkedList.js          # Linked list
│   ├── Stack.js               # Stack
│   ├── Queue.js               # Queue
│   └── MaxHeap.js             # Max heap
└── app.js             # Express server setup
```

---

## Data Structures Implementation

### 1. **LinkedList** - Skills Management
**Implementation Form:** Singly Linked List  
**Files:**
- `frontend/src/dsa/LinkedList.js`
- `backend/src/utils/LinkedList.js`

**Use Case:** Managing job skill requirements  
**Where Used:**
- Job posting form to add/remove required skills
- Displaying skill lists on job cards

**Time Complexity:**
- Insert at head: O(1)
- Insert at tail: O(1) with tail pointer
- Delete: O(n)
- Search: O(n)

**How it works:**
```javascript
// Each skill is a node in the list
class Node {
  constructor(data) {
    this.data = data;    // Skill name
    this.next = null;    // Next skill
  }
}

// Example: JavaScript -> React -> Node.js -> null
```

---

### 2. **Stack** - Answer Management
**Implementation Form:** Array-based Stack  
**Files:**
- `frontend/src/dsa/Stack.js`
- `backend/src/utils/Stack.js`

**Use Case:** Managing candidate answers during tests  
**Where Used:**
- Test.jsx - storing answers as candidates progress
- Allows reviewing and modifying previous answers

**Time Complexity:**
- Push: O(1)
- Pop: O(1)
- Peek: O(1)
- isEmpty: O(1)

**How it works:**
```javascript
// Answers stored in Last-In-First-Out order
answerStack.push(answer1);  // Bottom
answerStack.push(answer2);  
answerStack.push(answer3);  // Top

// Pop returns answer3 first (most recent)
```

**Real Usage:**
- Candidate answers question 1 → push answer
- Moves to question 2 → push answer
- Goes back → pop to review previous answer
- Modify and push updated answer

---

### 3. **Queue** - Question Delivery
**Implementation Form:** Array-based Queue (FIFO)  
**Files:**
- `frontend/src/dsa/Queue.js`
- `backend/src/utils/Queue.js`

**Use Case:** Fair delivery of technical questions  
**Where Used:**
- testService.js - queuing questions by domain
- Test.jsx - displaying questions in order

**Time Complexity:**
- Enqueue: O(1)
- Dequeue: O(1)
- Peek: O(1)

**How it works:**
```javascript
// Questions delivered in First-In-First-Out order
questionQueue.enqueue(question1);  // Front
questionQueue.enqueue(question2);
questionQueue.enqueue(question3);  // Back

// Dequeue returns question1 first
```

**Real Usage:**
1. Load 10 questions from database
2. Shuffle randomly
3. Add to queue in order
4. Candidate sees questions one by one (FIFO)
5. No skipping - must answer current to see next

---

### 4. **MaxHeap** - Candidate Ranking
**Implementation Form:** Binary Max Heap (Tree as Array)  
**Files:**
- `frontend/src/dsa/MaxHeap.js`
- `backend/src/utils/MaxHeap.js`

**Use Case:** Ranking candidates by test scores  
**Where Used:**
- Results.jsx - displaying top candidates
- Dashboard.jsx - showing best applicants

**Time Complexity:**
- Insert: O(log n)
- Extract Max: O(log n)
- Get Max: O(1)
- Build Heap: O(n)

**Tree Structure:**
```
Binary Max Heap visualized as tree:
        95 (top candidate)
       /  \
     87    82
    /  \   /
   75  68 71

Stored as array: [95, 87, 82, 75, 68, 71]
```

**How it works:**
- Parent is always greater than children
- Root is the highest scoring candidate
- Insert new score and "bubble up"
- Extract max and "bubble down"

**Real Usage:**
```javascript
// Add candidate scores
heap.insert({ name: "John", score: 87 });
heap.insert({ name: "Jane", score: 95 });
heap.insert({ name: "Bob", score: 82 });

// Get top scorer
const topCandidate = heap.extractMax(); // Jane (95)

// Get next best
const secondBest = heap.extractMax();   // John (87)
```

---

### 5. **Graph** - Job Network & Recommendations
**Implementation Form:** Adjacency List (Undirected Weighted Graph)  
**Files:**
- `frontend/src/dsa/Graph.js`
- `backend/src/utils/Graph.js`
- `backend/src/services/jobGraphService.js`

**Use Case:** Finding similar job recommendations across domains  
**Where Used:**
- Apply.jsx - SimilarJobs sidebar
- jobController.js - /api/jobs/:id/similar endpoint

**Time Complexity:**
- Add Vertex: O(1)
- Add Edge: O(1)
- BFS Traversal: O(V + E) where V = vertices, E = edges
- DFS Traversal: O(V + E)

**Graph Structure:**
```
Job Network Example:

[Frontend Job] ──3── [Backend Job]     (same domain: weight 3)
      │                   │
      │2                  │2
      │                   │
[ML Engineer Job] ──2── [Data Scientist] (related domain: weight 2)

Weight 3 = Same domain (e.g., both Web Development)
Weight 2 = Related domain (e.g., AI/ML ↔ Data Science)
```

**Domain Relationships:**
```javascript
const domainRelationships = {
  'Web Development': ['Software Engineering'],
  'Software Engineering': ['Web Development'],
  'AI/ML': ['Data Science'],
  'Data Science': ['AI/ML'],
  'Cybersecurity': ['DevOps'],
  'DevOps': ['Cybersecurity']
};
```

**How BFS Works for Job Recommendations:**
```javascript
// User viewing "Frontend Developer" job
// BFS finds similar jobs within depth 2

Depth 0: Frontend Developer (current job)
Depth 1: Backend Developer (same domain, weight 3)
         React Native Developer (same domain, weight 3)
Depth 2: Software Engineer (related domain, weight 2)
         Java Developer (related domain, weight 2)

// Returns top 5 sorted by weight and depth
```

**Real Usage:**
1. Build graph when server starts
2. Each job is a vertex
3. Connect jobs in same domain (weight 3)
4. Connect jobs in related domains (weight 2)
5. When user views a job, run BFS from that job
6. Return similar jobs within depth 2
7. Display in sidebar with similarity percentage

**Implementation Details:**
```javascript
class Graph {
  constructor() {
    this.adjacencyList = new Map();
  }

  // Add a job as vertex
  addVertex(vertex) {
    if (!this.adjacencyList.has(vertex)) {
      this.adjacencyList.set(vertex, []);
    }
  }

  // Connect two jobs
  addEdge(vertex1, vertex2, weight) {
    this.adjacencyList.get(vertex1).push({ node: vertex2, weight });
    this.adjacencyList.get(vertex2).push({ node: vertex1, weight });
  }

  // Find similar jobs using BFS
  bfsWithDepth(startVertex, maxDepth = 2) {
    // Returns jobs within maxDepth hops
  }
}
```

---

### 6. **HeapSort** - Job Sorting
**Implementation Form:** Binary Heap (Tree structure) used for sorting  
**Files:**
- `frontend/src/dsa/HeapSort.js`

**Use Case:** Sorting jobs by title, date, or domain  
**Where Used:**
- Jobs.jsx - sorting job listings
- Dashboard.jsx - sorting recruiter's jobs

**Time Complexity:**
- Best Case: O(n log n)
- Average Case: O(n log n)
- Worst Case: O(n log n) - guaranteed
- Space: O(1) - in-place sorting

**How it works:**
```
Sorting jobs by title using Heap Sort:

Unsorted: [Zara Job, Apple Job, Mama Job, Beta Job]

Step 1: Build Max Heap (tree structure)
         Zara
        /    \
     Mama    Apple
     /
   Beta

Step 2: Extract max repeatedly
- Swap Zara with Beta → [Beta, Mama, Apple, Zara]
- Heapify remaining
- Swap Mama with Beta → [Beta, Apple, Mama, Zara]
- Continue...

Final: [Apple Job, Beta Job, Mama Job, Zara Job]
```

**Real Usage:**
```javascript
// Sort jobs by title alphabetically
const sortedJobs = HeapSort.sort(jobs, 'title', 'asc');

// Sort by creation date (newest first)
const sortedByDate = HeapSort.sort(jobs, 'created_at', 'desc');
```

**Why HeapSort over QuickSort:**
- Guaranteed O(n log n) - no worst case O(n²)
- Uses tree structure (fulfills tree requirement)
- In-place sorting - no extra memory needed
- MaxHeap already implemented - consistent with ranking system

---

### 7. **BinarySearch** - Efficient Job Search
**Implementation Form:** Modified Binary Search for Partial Matching  
**Files:**
- `frontend/src/dsa/BinarySearch.js`

**Use Case:** Searching through sorted job listings  
**Where Used:**
- Jobs.jsx - search bar
- Dashboard.jsx - search recruiter's jobs

**Time Complexity:**
- Exact Match: O(log n) - true binary search
- Substring Match: O(n) - must check all items
- But: Sorted data allows early termination

**How it works:**
```
Search "React" in sorted jobs:

Step 1: Sort jobs alphabetically
[Angular Dev, Backend Dev, React Native, React Dev, Vue Dev]

Step 2: Search for "React" substring
- Check Angular: No match, continue
- Check Backend: No match, continue
- Check React Native: MATCH! Add to results
- Check React Dev: MATCH! Add to results
- Check Vue: No match, continue

Returns: [React Native, React Dev]
```

**Why Sort First:**
Even though substring search is O(n), sorting first helps because:
1. Matching results are grouped together
2. Can terminate early if past alphabetical range
3. Results are already in order

**Real Usage:**
```javascript
// User types "java" in search box
const jobs = getJobs(); // Unsorted

// Step 1: Sort using Heap Sort (tree-based)
const sortedJobs = HeapSort.sort(jobs, 'title', 'asc');

// Step 2: Binary search
const results = BinarySearch.search(
  sortedJobs, 
  'java',
  ['title', 'description', 'domain'],
  'title'
);

// Results: JavaScript Developer, Java Engineer, etc.
```

---

### 8. **Tree** (Not Currently Used)
**Implementation Form:** Binary Search Tree  
**Files:**
- `frontend/src/dsa/Tree.js`

**Potential Use Case:** 
- Skill dependency tree
- Hierarchical domain relationships
- Question difficulty progression

**Time Complexity:**
- Insert: O(log n) average, O(n) worst
- Search: O(log n) average, O(n) worst
- Delete: O(log n) average, O(n) worst

---

## Frontend-Backend Communication

### Request-Response Flow

```
┌─────────────┐                    ┌─────────────┐                    ┌──────────┐
│   React     │                    │   Express   │                    │ Supabase │
│  Frontend   │                    │   Backend   │                    │ Database │
└─────────────┘                    └─────────────┘                    └──────────┘
       │                                  │                                  │
       │  1. GET /api/jobs                │                                  │
       │─────────────────────────────────>│                                  │
       │                                  │  2. Query jobs table             │
       │                                  │─────────────────────────────────>│
       │                                  │                                  │
       │                                  │  3. Return job records           │
       │                                  │<─────────────────────────────────│
       │                                  │                                  │
       │                                  │  4. Transform data (LinkedList)  │
       │                                  │     Build job graph (Graph)      │
       │                                  │                                  │
       │  5. JSON response with jobs      │                                  │
       │<─────────────────────────────────│                                  │
       │                                  │                                  │
       │  6. Transform jobs (DSA)         │                                  │
       │     - Sort (HeapSort)            │                                  │
       │     - Search (BinarySearch)      │                                  │
       │     - Display in UI              │                                  │
```

### API Endpoints

#### Authentication
- `POST /api/auth/google` - Google OAuth login
- `GET /api/auth/me` - Get current user

#### Jobs
- `GET /api/jobs` - Get all jobs
- `GET /api/jobs/:id` - Get single job
- `GET /api/jobs/user/my-jobs` - Get recruiter's jobs
- `POST /api/jobs` - Create job
- `PUT /api/jobs/:id` - Update job
- `DELETE /api/jobs/:id` - Delete job
- `GET /api/jobs/:id/similar` - Get similar jobs (BFS)
- `GET /api/jobs/graph/stats` - Get graph statistics
- `POST /api/jobs/graph/rebuild` - Rebuild job graph

#### Applications
- `GET /api/applications` - Get all applications
- `GET /api/applications/job/:jobId` - Get job applications
- `POST /api/applications` - Submit application

#### Tests
- `POST /api/test/start` - Start assessment
- `GET /api/test/questions/:sessionId` - Get questions (Queue)
- `POST /api/test/submit` - Submit answers (Stack)
- `GET /api/test/results/:sessionId` - Get results (MaxHeap)

#### Domains
- `GET /api/domains` - Get all technical domains

---

## How the Code Works

### 1. Job Posting Flow

**Step-by-Step:**

1. **Recruiter clicks "Post Job"**
   - `Dashboard.jsx` shows `JobPostingForm.jsx`

2. **Form submission**
   ```javascript
   // Dashboard.jsx
   const handleCreateJob = async (jobData) => {
     await createJob(jobData);  // API call
     await fetchJobs();         // Refresh list
   }
   ```

3. **API request**
   ```javascript
   // frontend/src/services/api.js
   export const createJob = async (jobData) => {
     const response = await axios.post('/api/jobs', jobData);
     return response.data;
   }
   ```

4. **Backend receives request**
   ```javascript
   // backend/src/routes/jobRoutes.js
   router.post('/jobs', createJobController);
   ```

5. **Controller processes**
   ```javascript
   // backend/src/controllers/jobController.js
   const createJobController = async (req, res) => {
     const job = await createJob(req.body);
     
     // Rebuild job graph to include new job
     await rebuildJobGraph();
     
     res.json(job);
   }
   ```

6. **Database service**
   ```javascript
   // backend/src/services/databaseService.js
   const createJob = async (jobData) => {
     const { data, error } = await supabase
       .from('jobs')
       .insert(jobData)
       .select();
     return data[0];
   }
   ```

7. **Graph rebuild**
   ```javascript
   // backend/src/services/jobGraphService.js
   const buildJobGraph = async () => {
     const jobs = await getAllJobs();
     const graph = new Graph();
     
     // Add each job as vertex
     jobs.forEach(job => graph.addVertex(job.id));
     
     // Connect jobs in same domain (weight 3)
     // Connect jobs in related domains (weight 2)
     
     return graph;
   }
   ```

---

### 2. Job Search & Sort Flow

**Step-by-Step:**

1. **User types in search box**
   ```javascript
   // Jobs.jsx
   const [searchQuery, setSearchQuery] = useState('');
   
   <input 
     value={searchQuery}
     onChange={(e) => setSearchQuery(e.target.value)}
   />
   ```

2. **Filter and sort jobs**
   ```javascript
   // Jobs.jsx
   const getFilteredAndSortedJobs = () => {
     let result = jobs;
     
     // Filter by domain
     if (filterDomain !== 'All') {
       result = result.filter(job => job.domain === filterDomain);
     }
     
     // Sort first using Heap Sort (tree-based)
     if (sortBy) {
       result = HeapSort.sort(result, sortBy, sortOrder);
     }
     
     // Then search (BinarySearch on sorted data)
     if (searchQuery) {
       result = BinarySearch.search(
         result, 
         searchQuery, 
         ['title', 'description', 'domain'],
         sortBy
       );
     }
     
     return result;
   }
   ```

3. **QuickSort implementation**
   ```javascript
   // frontend/src/dsa/QuickSort.js
   static sort(items, field, order) {
     const arr = [...items];  // Don't modify original
     this.quickSort(arr, 0, arr.length - 1, field, order);
     return arr;
   }
   
   static quickSort(arr, low, high, field, order) {
     if (low < high) {
       const pivotIndex = this.partition(arr, low, high, field, order);
       this.quickSort(arr, low, pivotIndex - 1, field, order);
       this.quickSort(arr, pivotIndex + 1, high, field, order);
     }
   }
   ```

4. **BinarySearch implementation**
   ```javascript
   // frontend/src/dsa/BinarySearch.js
   static search(sortedArray, query, fields, sortField) {
     const results = [];
     const searchTerm = query.toLowerCase();
     
     for (let i = 0; i < sortedArray.length; i++) {
       const item = sortedArray[i];
       
       // Check if any field matches
       const matches = fields.some(field => {
         const value = item[field];
         return value?.toLowerCase().includes(searchTerm);
       });
       
       if (matches) results.push(item);
     }
     
     return results;
   }
   ```

5. **Display results**
   ```javascript
   // Jobs.jsx
   const filteredJobs = getFilteredAndSortedJobs();
   
   return (
     <div>
       {filteredJobs.map(job => (
         <JobCard key={job.id} job={job} />
       ))}
     </div>
   );
   ```

---

### 3. Similar Jobs Recommendation Flow

**Step-by-Step:**

1. **User views a job**
   ```javascript
   // Apply.jsx
   <SimilarJobs jobId={job.id} />
   ```

2. **Component fetches recommendations**
   ```javascript
   // SimilarJobs.jsx
   useEffect(() => {
     const fetchSimilarJobs = async () => {
       const data = await getSimilarJobs(jobId, 5, 2);
       setSimilarJobs(data);
     };
     fetchSimilarJobs();
   }, [jobId]);
   ```

3. **API request**
   ```javascript
   // frontend/src/services/api.js
   export const getSimilarJobs = async (jobId, limit, depth) => {
     const response = await axios.get(
       `/api/jobs/${jobId}/similar?limit=${limit}&depth=${depth}`
     );
     return response.data;
   }
   ```

4. **Backend controller**
   ```javascript
   // backend/src/controllers/jobController.js
   const getSimilarJobsController = async (req, res) => {
     const { jobId } = req.params;
     const limit = parseInt(req.query.limit) || 5;
     const depth = parseInt(req.query.depth) || 2;
     
     const similarJobs = await findSimilarJobs(jobId, limit, depth);
     res.json(similarJobs);
   }
   ```

5. **Job graph service uses BFS**
   ```javascript
   // backend/src/services/jobGraphService.js
   const findSimilarJobs = async (jobId, limit, depth) => {
     // Get job graph
     const graph = await getJobGraph();
     
     // BFS to find jobs within depth
     const similarJobIds = graph.bfsWithDepth(jobId, depth);
     
     // Get full job details
     const jobs = await getJobsByIds(similarJobIds);
     
     // Sort by similarity and limit results
     return jobs.slice(0, limit);
   }
   ```

6. **BFS implementation**
   ```javascript
   // backend/src/utils/Graph.js
   bfsWithDepth(startVertex, maxDepth) {
     const visited = new Set();
     const queue = [{ vertex: startVertex, depth: 0 }];
     const result = [];
     
     while (queue.length > 0) {
       const { vertex, depth } = queue.shift();
       
       if (depth > maxDepth) continue;
       if (visited.has(vertex)) continue;
       
       visited.add(vertex);
       if (vertex !== startVertex) {
         result.push({ vertex, depth });
       }
       
       // Add neighbors to queue
       const neighbors = this.adjacencyList.get(vertex);
       neighbors.forEach(neighbor => {
         if (!visited.has(neighbor.node)) {
           queue.push({
             vertex: neighbor.node,
             depth: depth + 1
           });
         }
       });
     }
     
     return result.map(item => item.vertex);
   }
   ```

7. **Display recommendations**
   ```javascript
   // SimilarJobs.jsx
   return (
     <div className="similar-jobs-sidebar">
       <h3>Similar Jobs</h3>
       {similarJobs.map(job => (
         <JobCard key={job.id} job={job} />
       ))}
     </div>
   );
   ```

---

### 4. Assessment Delivery Flow

**Step-by-Step:**

1. **Candidate starts test**
   ```javascript
   // Apply.jsx
   const handleStartTest = async () => {
     const session = await startTest(jobId, candidateId);
     navigate(`/test/${session.id}`);
   }
   ```

2. **Backend creates test session**
   ```javascript
   // backend/src/controllers/testController.js
   const startTestController = async (req, res) => {
     const { jobId, candidateId } = req.body;
     
     // Create test session
     const session = await createTestSession(jobId, candidateId);
     
     // Load questions into queue
     const questions = await getQuestionsByDomain(job.domain_id);
     const questionQueue = new Queue();
     
     // Shuffle and add to queue
     shuffle(questions).forEach(q => questionQueue.enqueue(q));
     
     // Store queue in session
     await storeSessionQueue(session.id, questionQueue);
     
     res.json(session);
   }
   ```

3. **Get next question**
   ```javascript
   // Test.jsx
   const fetchNextQuestion = async () => {
     const question = await getNextQuestion(sessionId);
     setCurrentQuestion(question);
   }
   ```

4. **Backend dequeues question**
   ```javascript
   // backend/src/controllers/testController.js
   const getNextQuestionController = async (req, res) => {
     const { sessionId } = req.params;
     
     // Get session's question queue
     const queue = await getSessionQueue(sessionId);
     
     // Dequeue next question
     const question = queue.dequeue();
     
     // Update session
     await updateSessionQueue(sessionId, queue);
     
     res.json(question);
   }
   ```

5. **Candidate answers**
   ```javascript
   // Test.jsx
   const handleAnswer = (answer) => {
     // Push to answer stack
     answerStack.push({
       questionId: currentQuestion.id,
       answer: answer,
       timestamp: Date.now()
     });
     
     // Move to next question
     fetchNextQuestion();
   }
   ```

6. **Submit test**
   ```javascript
   // Test.jsx
   const handleSubmit = async () => {
     // Get all answers from stack
     const answers = [];
     while (!answerStack.isEmpty()) {
       answers.push(answerStack.pop());
     }
     
     // Submit to backend
     await submitTest(sessionId, answers);
     navigate('/results');
   }
   ```

7. **Backend calculates score**
   ```javascript
   // backend/src/controllers/testController.js
   const submitTestController = async (req, res) => {
     const { sessionId, answers } = req.body;
     
     // Calculate score
     const score = calculateScore(answers);
     
     // Save results
     await saveTestResults(sessionId, score, answers);
     
     // Add to ranking heap
     const heap = await getCandidateHeap(jobId);
     heap.insert({
       candidateId: candidate.id,
       score: score,
       name: candidate.name
     });
     await updateCandidateHeap(jobId, heap);
     
     res.json({ score, totalQuestions: answers.length });
   }
   ```

---

### 5. Candidate Ranking Flow

**Step-by-Step:**

1. **Recruiter views applications**
   ```javascript
   // Dashboard.jsx
   const fetchApplications = async (jobId) => {
     const apps = await getApplications(jobId);
     setApplications(apps);
   }
   ```

2. **Backend ranks candidates**
   ```javascript
   // backend/src/controllers/jobController.js
   const getApplicationsController = async (req, res) => {
     const { jobId } = req.params;
     
     // Get all applications
     const applications = await getApplicationsByJob(jobId);
     
     // Build max heap for ranking
     const heap = new MaxHeap();
     
     applications.forEach(app => {
       if (app.test_score) {
         heap.insert({
           id: app.id,
           candidateId: app.candidate_id,
           score: app.test_score,
           name: app.candidate_name
         });
       }
     });
     
     // Extract top candidates
     const rankedApps = [];
     while (!heap.isEmpty()) {
       rankedApps.push(heap.extractMax());
     }
     
     res.json(rankedApps);
   }
   ```

3. **MaxHeap implementation**
   ```javascript
   // backend/src/utils/MaxHeap.js
   class MaxHeap {
     insert(value) {
       this.heap.push(value);
       this.bubbleUp(this.heap.length - 1);
     }
     
     extractMax() {
       if (this.heap.length === 0) return null;
       
       const max = this.heap[0];
       const last = this.heap.pop();
       
       if (this.heap.length > 0) {
         this.heap[0] = last;
         this.bubbleDown(0);
       }
       
       return max;
     }
     
     bubbleUp(index) {
       while (index > 0) {
         const parentIndex = Math.floor((index - 1) / 2);
         
         if (this.heap[index].score <= this.heap[parentIndex].score) {
           break;
         }
         
         [this.heap[index], this.heap[parentIndex]] = 
         [this.heap[parentIndex], this.heap[index]];
         
         index = parentIndex;
       }
     }
   }
   ```

4. **Display ranked candidates**
   ```javascript
   // Dashboard.jsx
   return (
     <div className="applications-list">
       {applications.map((app, index) => (
         <div key={app.id}>
           <span>#{index + 1}</span>
           <span>{app.candidate_name}</span>
           <span>Score: {app.test_score}%</span>
         </div>
       ))}
     </div>
   );
   ```

---

## Performance Summary

| Operation | Data Structure | Time Complexity | Use Case |
|-----------|---------------|-----------------|----------|
| Add skill | LinkedList | O(1) | Job posting |
| Sort jobs | HeapSort | O(n log n) | Job listing |
| Search jobs | BinarySearch | O(n) substring | Job search |
| Get top candidate | MaxHeap | O(1) peek | Ranking |
| Add candidate | MaxHeap | O(log n) | New score |
| Get question | Queue | O(1) | Test delivery |
| Save answer | Stack | O(1) | Answer tracking |
| Find similar jobs | Graph BFS | O(V + E) | Recommendations |
| Build job graph | Graph | O(V + E) | Initial setup |

---

## Key Takeaways

1. **Data structures are used throughout the platform** - not just for show
2. **Frontend and backend share similar implementations** - easier maintenance
3. **Each DSA choice has a specific reason** - optimized for the use case
4. **Graph enables smart recommendations** - connects jobs across domains
5. **Heap makes ranking efficient** - always know the top candidates
6. **HeapSort (tree-based) guarantees performance** - O(n log n) worst case
7. **Queue ensures fairness** - questions delivered in order
8. **Stack allows flexibility** - candidates can review answers
9. **Binary search requires sorting first** - but it's worth it

---

## Future Enhancements

1. **Use Tree for skill dependencies**
   - "React requires JavaScript"
   - Show learning paths

2. **Add graph analytics**
   - Most connected jobs
   - Domain clustering
   - Popular career paths

3. **Implement caching**
   - Cache sorted job lists
   - Cache graph structure
   - Reduce database queries

4. **Add more graph features**
   - Shortest path between jobs
   - Job similarity scores
   - Career progression paths

---

**Last Updated:** December 25, 2024  
**Version:** 1.0  
**Maintained by:** SkillScreen Development Team
