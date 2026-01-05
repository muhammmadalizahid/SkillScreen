# SkillScreen - Professional Job Screening Platform

[![React](https://img.shields.io/badge/React-18.2-blue.svg)](https://reactjs.org/)
[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![Express](https://img.shields.io/badge/Express-4.18-lightgrey.svg)](https://expressjs.com/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind-3.3-38B2AC.svg)](https://tailwindcss.com/)
[![Supabase](https://img.shields.io/badge/Supabase-PostgreSQL-3ECF8E.svg)](https://supabase.com/)

A full-stack job screening platform with **custom data structures & algorithms** for Computer Science recruitment. Features intelligent candidate ranking, domain-based job recommendations, and database-driven MCQ assessments.

## 🎯 Project Overview

SkillScreen demonstrates the practical application of manually implemented data structures and algorithms in a production-ready web application. The platform handles job postings, candidate applications, MCQ testing, and automated ranking across six CS domains: **Web Development**, **Software Engineering**, **AI/ML**, **Cybersecurity**, **DevOps**, and **Data Science**.

---

## ✨ Implemented Features

#### **Core Data Structures** (Manual Implementation)
- 🔗 **LinkedList** - Job skills storage and management
- 📚 **Stack** - MCQ undo functionality and answer tracking
- 🔄 **Queue** - FIFO question delivery system
- 📊 **MaxHeap** - Efficient candidate ranking by score
- 🌐 **Graph** - Job network with BFS for similar job recommendations
- 🔍 **Binary Search** - Fast job filtering and search
- 📈 **Heap Sort** - Multiple sorting criteria for jobs

#### **Authentication & Authorization**
- 🔐 **Google OAuth Integration** - Secure sign-in with Google accounts
- 🔑 **JWT Token Management** - Stateless authentication
- 👤 **Role-Based Access** - Recruiter and candidate permissions
- 🛡️ **Protected Routes** - Middleware authentication

#### **Job Management System**
- ➕ **Job Creation** - Recruiters post jobs with domain and skills
- 📋 **Job Listing** - Browse all available positions
- 🔎 **Job Search & Filter** - Binary search and heap sort for efficient filtering
- 🌐 **Similar Jobs** - Graph BFS to find related positions by domain
- 📊 **Job Analytics** - Graph statistics and network visualization
- ✏️ **Job Updates** - Edit existing job postings
- 🗑️ **Job Deletion** - Remove positions with cascade handling

#### **Candidate Application Flow**
- 📝 **Application Submission** - Candidates apply with skill self-assessment
- 📧 **Email Integration** - Application tracking by email
- 👥 **Multiple Applications** - Candidates can apply to multiple jobs
- 🔄 **Application Status** - Real-time tracking

#### **MCQ Testing System**
- 📚 **Question Bank** - 30+ questions per domain stored in database
- 🎯 **Adaptive Difficulty** - Questions match experience level
- 🔄 **Queue-Based Delivery** - Questions served in FIFO order
- ↩️ **Stack-Based Undo** - Review and change previous answers
- ⏱️ **Auto-Grading** - Instant score calculation
- 📊 **Performance Tracking** - Detailed test results

#### **Candidate Ranking**
- 🏆 **MaxHeap Ranking** - Efficient O(log n) insertion and extraction
- 🎯 **Score-Based Sorting** - MCQ test performance ranking
- 📉 **Top N Extraction** - View top candidates dynamically
- 📊 **Visual Dashboard** - Recruiter interface with rankings

#### **Job Network & Recommendations**
- 🌐 **Domain-Based Graph** - Jobs connected by domain relationships
- 🔄 **BFS Traversal** - Find similar jobs with depth limits
- ⚖️ **Weighted Edges** - Same domain (weight: 3), Related (weight: 2)
- 🔗 **Dynamic Relationships** - Predefined domain connections
  - Web Dev ↔ Software Engineering
  - Software Eng ↔ DevOps, Data Science
  - AI/ML ↔ Data Science
  - Cybersecurity ↔ DevOps

#### **User Interface**
- 🎨 **Modern Design** - LinkedIn-inspired professional interface
- 📱 **Responsive Layout** - Mobile-first Tailwind CSS
- 🔄 **Real-Time Updates** - React state management
- 🎯 **Interactive Forms** - Validation and error handling
- 📊 **Data Visualization** - Charts and metrics
- 🔔 **User Feedback** - Toast notifications and confirmations

#### **Backend Services**
- 🗄️ **Database Service** - Supabase PostgreSQL operations
- 🔐 **Auth Service** - Google OAuth and JWT management
- 📝 **MCQ Service** - Question generation and grading
- 🏢 **Job Service** - Job CRUD operations
- 📊 **Graph Service** - Job network management
- ✅ **Validation Service** - Input validation and sanitization

#### **Database Schema**
- 👥 **Users Table** - Google OAuth user profiles
- 🏢 **Jobs Table** - Job postings with domain references
- 📋 **Domains Table** - CS domain categories
- 👤 **Candidates Table** - Candidate profiles
- 📝 **Applications Table** - Job applications with test scores
- ❓ **Question Bank** - MCQ questions by domain and difficulty

## 🏗️ Technology Stack

### Frontend Technologies
- **React 18.2** - Modern UI framework with hooks
- **Vite** - Lightning-fast build tool and dev server
- **React Router 6** - Client-side routing and navigation
- **Tailwind CSS 3.3** - Utility-first styling framework
- **Axios** - HTTP client for API communication
- **Context API** - Global state management for authentication

### Backend Technologies
- **Node.js 18+** - JavaScript runtime environment
- **Express 4.18** - Minimal web application framework
- **Supabase** - PostgreSQL database with real-time capabilities
- **Google OAuth 2.0** - Authentication service
- **JWT (jsonwebtoken)** - Secure token-based authentication
- **bcrypt** - Password hashing (for future features)
- **CORS** - Cross-origin resource sharing middleware
- **dotenv** - Environment variable management

### Development Tools
- **nodemon** - Auto-restart development server
- **PostCSS** - CSS processing for Tailwind
- **ESLint** - Code quality and consistency

## 📁 Project Structure

```
SkillScreen/
├── frontend/                      # React frontend application
│   ├── src/
│   │   ├── components/           # Reusable UI components
│   │   │   ├── JobPostingForm.jsx           # Create new job postings
│   │   │   ├── CandidateApplicationForm.jsx # Apply to jobs
│   │   │   ├── MCQTestView.jsx              # Take MCQ tests
│   │   │   ├── RecruiterDashboard.jsx       # View ranked candidates
│   │   │   ├── SimilarJobs.jsx              # Graph-based recommendations
│   │   │   ├── ConfirmDialog.jsx            # Confirmation modals
│   │   │   └── PrivateRoute.jsx             # Protected route wrapper
│   │   │
│   │   ├── pages/                # Main application pages
│   │   │   ├── Home.jsx          # Landing page with features
│   │   │   ├── Jobs.jsx          # Browse and search jobs
│   │   │   ├── Apply.jsx         # Job application page
│   │   │   ├── Dashboard.jsx     # Recruiter dashboard
│   │   │   └── Login.jsx         # Google OAuth login
│   │   │
│   │   ├── dsa/                  # Manual data structure implementations
│   │   │   ├── LinkedList.js     # Node-based linked list
│   │   │   ├── Stack.js          # LIFO stack with nodes
│   │   │   ├── Queue.js          # FIFO queue with nodes
│   │   │   ├── MaxHeap.js        # Array-based max heap
│   │   │   ├── Graph.js          # Adjacency list graph with BFS/DFS
│   │   │   ├── BinarySearch.js   # Binary search algorithm
│   │   │   └── HeapSort.js       # Heap sort algorithm
│   │   │
│   │   ├── services/             # API communication layer
│   │   │   └── api.js            # Axios instance and API calls
│   │   │
│   │   ├── context/              # React Context providers
│   │   │   └── AuthContext.jsx   # Authentication state management
│   │   │
│   │   ├── utils/                # Helper functions
│   │   │   ├── dataTransformers.js  # Data formatting utilities
│   │   │   └── helpers.js           # General helper functions
│   │   │
│   │   ├── App.jsx               # Main app component with routing
│   │   ├── main.jsx              # React DOM entry point
│   │   └── index.css             # Global styles and Tailwind imports
│   │
│   ├── public/                   # Static assets
│   ├── index.html                # HTML template
│   ├── package.json              # Dependencies and scripts
│   ├── vite.config.js            # Vite configuration
│   ├── tailwind.config.js        # Tailwind CSS configuration
│   └── postcss.config.cjs        # PostCSS configuration
│
├── backend/                       # Node.js/Express backend
│   ├── src/
│   │   ├── controllers/          # Route handlers
│   │   │   ├── jobController.js          # Job CRUD operations
│   │   │   ├── candidateController.js    # Application handling
│   │   │   └── mcqController.js          # MCQ generation & grading
│   │   │
│   │   ├── routes/               # API route definitions
│   │   │   ├── authRoutes.js     # Google OAuth endpoints
│   │   │   ├── jobRoutes.js      # Job management endpoints
│   │   │   ├── candidateRoutes.js # Application endpoints
│   │   │   ├── mcqRoutes.js      # MCQ test endpoints
│   │   │   └── domainRoutes.js   # Domain data endpoints
│   │   │
│   │   ├── services/             # Business logic layer
│   │   │   ├── authService.js         # Google OAuth verification
│   │   │   ├── databaseService.js     # Supabase operations
│   │   │   ├── jobGraphService.js     # Graph building & BFS
│   │   │   ├── mcqService.js          # Question management
│   │   │   ├── skillService.js        # Skill operations
│   │   │   └── validationService.js   # Input validation
│   │   │
│   │   ├── middleware/           # Express middleware
│   │   │   └── authMiddleware.js # JWT verification
│   │   │
│   │   ├── utils/                # Utility classes
│   │   │   └── Graph.js          # Backend graph implementation
│   │   │
│   │   ├── config/               # Configuration files
│   │   │   └── db.js             # Supabase client setup
│   │   │
│   │   ├── app.js                # Express app setup and routes
│   │   └── seedJobs.js           # Database seeding script
│   │
│   └── package.json              # Backend dependencies and scripts
│
├── README.md                      # Project documentation
├── PROJECT_DOCUMENTATION.md       # Technical documentation
├── QuestionBankImport.sql         # MCQ question data
├── JSONStructure.txt              # API response formats
└── parse_questions.js             # Question import utility
```

### Key Directory Descriptions

- **frontend/src/dsa/** - All data structures implemented from scratch without libraries
- **frontend/src/components/** - Reusable React components with complex state management
- **frontend/src/pages/** - Full-page route components
- **backend/src/services/** - Core business logic separated from route handlers
- **backend/src/utils/** - Shared utility classes used across services

## 🚀 Getting Started

### Prerequisites
- **Node.js** v18 or higher ([Download](https://nodejs.org/))
- **npm** or **yarn** package manager
- **Supabase Account** ([Sign up free](https://supabase.com/))
- **Google Cloud Console** project for OAuth ([Console](https://console.cloud.google.com/))

### Installation Steps

#### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/SkillScreen.git
cd SkillScreen
```

#### 2. Backend Setup

```bash
# Navigate to backend directory
cd backend

# Install dependencies
npm install

# Create environment file
copy .env.example .env
```

**Configure `.env` file:**
```env
PORT=3000
SUPABASE_URL=your_supabase_project_url
SUPABASE_KEY=your_supabase_anon_key
JWT_SECRET=your_secure_jwt_secret_key
GOOGLE_CLIENT_ID=your_google_oauth_client_id
```

**Get Supabase credentials:**
1. Create project at [supabase.com](https://supabase.com)
2. Go to Project Settings → API
3. Copy Project URL and anon/public key

**Get Google OAuth credentials:**
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create new project or select existing
3. Enable Google+ API
4. Create OAuth 2.0 Client ID credentials
5. Add authorized origins: `http://localhost:5173`
6. Copy Client ID

#### 3. Database Setup

**Option A: Using Supabase Dashboard**
1. Open your Supabase project dashboard
2. Go to SQL Editor
3. Run the schema creation queries (contact repo owner for schema)
4. Import question bank data using `QuestionBankImport.sql`

**Option B: Seed Sample Data**
```bash
# Run the seed script
npm run seed
```

#### 4. Frontend Setup

```bash
# Navigate to frontend directory (from project root)
cd frontend

# Install dependencies
npm install

# Create environment file
copy .env.example .env
```

**Configure frontend `.env`:**
```env
VITE_API_BASE_URL=http://localhost:3000/api
VITE_GOOGLE_CLIENT_ID=your_google_oauth_client_id
```

### Running the Application

#### Start Backend Server
```bash
cd backend
npm run dev
```
Server runs at: `http://localhost:3000`

#### Start Frontend Development Server
```bash
cd frontend
npm run dev
```
Application runs at: `http://localhost:5173`

#### Access the Platform
1. Open browser to `http://localhost:5173`
2. Click "Sign In" and authenticate with Google
3. Start exploring jobs or post new positions!

## 📊 Data Structures Implementation & Usage

### 1. **LinkedList** - Job Skills Management
**File:** [frontend/src/dsa/LinkedList.js](frontend/src/dsa/LinkedList.js)

**Implementation:** Node-based singly linked list with head pointer

**Operations:**
- `insert(data)` - Add skill to end - O(n)
- `delete(data)` - Remove skill by value - O(n)
- `search(data)` - Find skill - O(n)
- `toArray()` - Convert to array for display - O(n)

**Usage in Application:**
- Storing job required skills dynamically
- Sequential skill iteration
- Dynamic skill list modifications

---

### 2. **Stack** - MCQ Undo Functionality
**File:** [frontend/src/dsa/Stack.js](frontend/src/dsa/Stack.js)

**Implementation:** Node-based LIFO structure with top pointer

**Operations:**
- `push(data)` - Add answer - O(1)
- `pop()` - Remove last answer - O(1)
- `peek()` - View top answer - O(1)
- `isEmpty()` - Check if empty - O(1)

**Usage in Application:**
- Store answered MCQ questions
- Undo functionality in tests
- Answer history tracking
- Last-in-first-out answer retrieval

---

### 3. **Queue** - Question Delivery System
**File:** [frontend/src/dsa/Queue.js](frontend/src/dsa/Queue.js)

**Implementation:** Node-based FIFO structure with front and rear pointers

**Operations:**
- `enqueue(data)` - Add question to rear - O(1)
- `dequeue()` - Remove from front - O(1)
- `peek()` - View next question - O(1)
- `toArray()` - Get all questions - O(n)

**Usage in Application:**
- MCQ question delivery in order
- Fair question distribution (FIFO)
- Question prefetching
- Test session management

---

### 4. **MaxHeap** - Candidate Ranking
**Files:** [frontend/src/dsa/MaxHeap.js](frontend/src/dsa/MaxHeap.js)

**Implementation:** Array-based binary max heap with custom comparator

**Operations:**
- `insert(data)` - Add candidate - O(log n)
- `extractMax()` - Get top candidate - O(log n)
- `heapifyUp()` - Maintain heap property - O(log n)
- `heapifyDown()` - Rebalance after extraction - O(log n)

**Usage in Application:**
- Rank candidates by test score
- Efficient top-N candidate extraction
- Dynamic ranking updates
- O(log n) insertion for real-time rankings

**Ranking Formula:**
```javascript
totalScore = testPercentage // MCQ test score (0-100)
```

---

### 5. **Graph** - Job Network & Recommendations
**Files:** 
- [frontend/src/dsa/Graph.js](frontend/src/dsa/Graph.js)
- [backend/src/utils/Graph.js](backend/src/utils/Graph.js)

**Implementation:** Adjacency list with weighted edges

**Operations:**
- `addVertex(vertex)` - Add job node - O(1)
- `addEdge(u, v, weight)` - Connect jobs - O(1)
- `bfs(start, depth)` - Find similar jobs - O(V + E)
- `getNeighbors(vertex)` - Get connected jobs - O(1)

**Graph Structure:**
```
Jobs connected by domain:
- Same domain: weight = 3 (strong)
- Related domains: weight = 2 (moderate)
- Unrelated: no edge
```

**Domain Relationships:**
```
Web Dev ↔ Software Engineering
Software Eng ↔ DevOps, Data Science
AI/ML ↔ Data Science
Cybersecurity ↔ DevOps
```

**Usage in Application:**
- Build job network on server startup
- BFS traversal for "Similar Jobs" feature
- Weighted graph for relevance scoring
- Domain-based job clustering

---

### 6. **Binary Search** - Job Search & Filter
**File:** [frontend/src/dsa/BinarySearch.js](frontend/src/dsa/BinarySearch.js)

**Implementation:** Classic binary search with field-based comparison

**Operations:**
- `search(array, query, fields)` - Filtered search - O(n) [linear scan with matching]
- `exactSearch(array, target, field)` - Exact match - O(log n)

**Usage in Application:**
- Fast job title/description search
- Efficient filtering in sorted lists
- Quick exact match lookups

---

### 7. **Heap Sort** - Multiple Sorting Criteria
**File:** [frontend/src/dsa/HeapSort.js](frontend/src/dsa/HeapSort.js)

**Implementation:** In-place sorting using heap data structure

**Operations:**
- `sort(array, field, order)` - Sort by field - O(n log n)
- `heapify(array, size, root)` - Build heap - O(log n)

**Usage in Application:**
- Sort jobs by posted date
- Sort by title alphabetically
- Sort candidates by score
- Multi-criteria sorting options

---

### Data Structure Interaction Flow

```
Job Posting Flow:
JobPostingForm → LinkedList (skills) → Database

Application Flow:
CandidateForm → Application → MCQ Generation → Queue (questions)

MCQ Test Flow:
Queue.dequeue() → Display Question → Stack.push(answer) → Next Question
Stack.pop() → Undo Last → Queue (re-enqueue)

Ranking Flow:
Applications → Calculate Scores → MaxHeap.insert() → MaxHeap.extractMax() → Top N Candidates

Similar Jobs Flow:
Current Job → Graph.bfs(jobId, depth=2) → Related Jobs by Domain
```

## 🤖 AI Integration

### Gemini API - MCQ Generation
```javascript
Generate 1 multiple-choice question for the skill {skill_name}.
Include 4 options and specify the correct answer.
Difficulty: {easy/medium/hard} based on candidate level {level}.
```

### Gemini API - Personalized Feedback
Analyzes candidate performance and provides:
- Overall assessment
- Strengths and weaknesses
- Skill gap analysis
- Learning recommendations
- Next steps

## 🔧 API Endpoints

### Authentication Routes (`/api/auth`)
| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| POST | `/google` | Google OAuth login | No |
| GET | `/verify` | Verify JWT token | Yes |
| POST | `/refresh` | Refresh access token | Yes |

### Job Routes (`/api/jobs`)
| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| POST | `/` | Create new job | Yes |
| GET | `/` | Get all jobs | No |
| GET | `/user/my-jobs` | Get user's jobs | Yes |
| GET | `/graph/stats` | Get graph statistics | No |
| POST | `/graph/rebuild` | Rebuild job graph | Yes |
| GET | `/:id` | Get job by ID | No |
| GET | `/:id/similar` | Get similar jobs (BFS) | No |
| PUT | `/:id` | Update job | Yes |
| DELETE | `/:id` | Delete job | Yes |

### Application Routes (`/api/applications`)
| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| POST | `/` | Submit application | Yes |
| GET | `/` | Get all applications | No |
| GET | `/:id` | Get application by ID | No |
| GET | `/ranked/:jobId` | Get ranked candidates | No |

### MCQ Routes (`/api/mcqs`)
| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| POST | `/generate` | Generate MCQ test | No |
| POST | `/submit` | Submit MCQ answers | No |

### Domain Routes (`/api/domains`)
| Method | Endpoint | Description | Auth Required |
|--------|----------|-------------|---------------|
| GET | `/` | Get all domains | No |
| GET | `/:id` | Get domain by ID | No |

### Request/Response Examples

**Create Job:**
```json
POST /api/jobs
Headers: { "Authorization": "Bearer <jwt_token>" }
Body: {
  "title": "Senior Backend Developer",
  "description": "Looking for experienced Node.js developer",
  "domain": "Software Engineering",
  "skills": ["Node.js", "Express", "PostgreSQL"],
  "experienceLevel": "Senior"
}
```

**Generate MCQs:**
```json
POST /api/mcqs/generate
Body: {
  "domain": "Software Engineering",
  "skills": ["Node.js", "Express"],
  "experienceLevel": "Mid Level"
}
Response: {
  "success": true,
  "data": {
    "questions": [...], // Queue of questions
    "testSessionId": "uuid"
  }
}
```

**Submit Application:**
```json
POST /api/applications
Headers: { "Authorization": "Bearer <jwt_token>" }
Body: {
  "candidateName": "John Doe",
  "candidateEmail": "john@example.com",
  "jobId": "123"
}
```

## 🎨 User Workflow & Features

### For Job Seekers (Candidates)

#### 1. **Sign In**
- Click "Sign In" on homepage
- Authenticate with Google OAuth
- Automatic profile creation in database

#### 2. **Browse Jobs**
- Navigate to "Browse Jobs" page
- View all available positions
- Search by title, domain, or skills
- Sort by date or relevance
- View similar jobs (Graph BFS recommendations)

#### 3. **Apply for Position**
- Click "Apply" on job listing
- Fill out application form
- Automatic user info population
- Submit application

#### 4. **Take MCQ Test**
- System generates questions from database
- Questions delivered via Queue (FIFO)
- Answer questions one by one
- Use undo feature (Stack) to review previous answers
- Auto-grading upon completion

#### 5. **View Results**
- See test score immediately
- View correct/incorrect answers
- Application automatically linked to job

---

### For Recruiters

#### 1. **Sign In & Access Dashboard**
- Google OAuth authentication
- Navigate to "Recruiter Dashboard"
- View all posted jobs

#### 2. **Post New Job**
- Fill job posting form
- Select domain from dropdown
- Add multiple skills dynamically (LinkedList)
- Choose experience level
- Submit to database

#### 3. **View Applications**
- Select job from dashboard
- View all candidates who applied
- See ranked candidates (MaxHeap)
- Adjust Top N filter dynamically
- View individual candidate details

#### 4. **Analyze Candidates**
- Candidates automatically ranked by score
- View test performance breakdown
- See percentage scores
- Export rankings

#### 5. **Manage Jobs**
- Edit existing job postings
- Update requirements
- Delete obsolete positions
- View graph statistics

---

### Key User Interactions

**Search & Filter:**
- Type in search bar → Binary search filters results
- Click domain filter → Shows domain-specific jobs
- Sort dropdown → Heap sort applies ordering

**Similar Jobs:**
- Click "Similar Jobs" → Graph BFS traversal (depth 2)
- Shows jobs in same domain (weight 3)
- Shows jobs in related domains (weight 2)

**Dynamic Ranking:**
- Change "Top N" input → MaxHeap extracts N candidates
- Real-time re-ranking as input changes
- Efficient O(log n) operations

**Test Experience:**
- Questions appear one at a time (Queue dequeue)
- "Undo" button → Stack pop previous answer
- Question re-added to Queue for retry
- Progress bar shows completion status

## 🛠️ Development & Deployment

### Development Scripts

**Backend:**
```bash
npm start       # Start production server
npm run dev     # Start with nodemon (auto-reload)
npm run seed    # Seed sample jobs
```

**Frontend:**
```bash
npm run dev     # Start Vite dev server
npm run build   # Build for production
npm run preview # Preview production build
```

### Building for Production

**Frontend Build:**
```bash
cd frontend
npm run build
# Outputs to frontend/dist/
```

**Backend Production:**
```bash
cd backend
npm start
# Or use PM2 for process management:
pm2 start src/app.js --name skillscreen-api
```

### Environment Configuration

**Backend Environment Variables:**
```env
# Server
PORT=3000
NODE_ENV=production

# Database
SUPABASE_URL=your_production_supabase_url
SUPABASE_KEY=your_production_supabase_key

# Authentication
JWT_SECRET=your_secure_production_secret
GOOGLE_CLIENT_ID=your_google_client_id

# Optional
LOG_LEVEL=info
```

**Frontend Environment Variables:**
```env
# API Configuration
VITE_API_BASE_URL=https://your-api-domain.com/api

# Authentication
VITE_GOOGLE_CLIENT_ID=your_google_client_id

# Optional
VITE_APP_NAME=SkillScreen
VITE_ENV=production
```

### Deployment Options

**Backend Deployment:**
- **Vercel**: Deploy with `vercel` CLI
- **Railway**: Connect GitHub repo
- **Heroku**: Use `Procfile`
- **AWS/DigitalOcean**: PM2 + Nginx

**Frontend Deployment:**
- **Vercel**: `vercel --prod`
- **Netlify**: Connect GitHub repo
- **GitHub Pages**: Build and deploy `dist/`

### Database Migrations

When updating schema:
1. Run SQL migrations in Supabase dashboard
2. Update seed scripts if needed
3. Test with `npm run seed`

### Code Quality

**Linting:**
```bash
npm run lint        # Check for issues
npm run lint:fix    # Auto-fix issues
```

**Testing:**
```bash
npm test            # Run test suite
npm run test:watch  # Watch mode
```

## 📚 Key Learning Outcomes

This project demonstrates mastery of:

### Data Structures & Algorithms
✅ **Manual implementation** of 7 core data structures without libraries  
✅ **Practical application** in real-world scenarios (not just theoretical)  
✅ **Time complexity analysis** - O(1), O(log n), O(n) operations  
✅ **Space complexity optimization** - efficient memory usage  
✅ **Algorithm selection** - choosing right DS for specific problems

### Software Engineering
✅ **Full-stack development** - React frontend + Node.js backend  
✅ **RESTful API design** - proper HTTP methods and status codes  
✅ **Authentication & Authorization** - OAuth 2.0 and JWT  
✅ **Database modeling** - relational schema design with Supabase  
✅ **State management** - React Context API and hooks  
✅ **Component architecture** - reusable, maintainable components

### Professional Development
✅ **Git version control** - branching and collaboration  
✅ **Environment configuration** - production vs development  
✅ **API documentation** - clear endpoint specifications  
✅ **Code organization** - separation of concerns, MVC pattern  
✅ **Error handling** - try-catch, validation, user feedback  
✅ **Security best practices** - JWT tokens, OAuth, CORS

### Problem Solving
✅ **Graph algorithms** - BFS for job recommendations  
✅ **Priority queue** - efficient candidate ranking  
✅ **FIFO/LIFO** - question delivery and undo functionality  
✅ **Binary search** - fast filtering and lookup  
✅ **Heap operations** - sorting and top-N extraction

---

## 🔮 Future Enhancements

### Planned Features
- [ ] **Real-time notifications** - WebSocket for instant updates
- [ ] **Advanced analytics** - Recruiter dashboard with charts
- [ ] **Resume parser** - Extract skills automatically from PDF/DOCX
- [ ] **Video interviews** - Integrated video call scheduling
- [ ] **AI feedback** - Gemini API for personalized recommendations
- [ ] **Code challenges** - Live coding environment for technical roles
- [ ] **Mobile app** - React Native iOS/Android applications
- [ ] **Email notifications** - Application status updates
- [ ] **Batch operations** - Bulk job posting and candidate management
- [ ] **Advanced filtering** - Multi-criteria job search
- [ ] **Saved searches** - Store and reuse search queries
- [ ] **Application tracking** - Status workflow (applied → screening → interview → offer)

### Technical Improvements
- [ ] **Redis caching** - Improve API response times
- [ ] **Rate limiting** - API request throttling
- [ ] **Comprehensive testing** - Unit, integration, E2E tests
- [ ] **CI/CD pipeline** - Automated testing and deployment
- [ ] **Docker containers** - Consistent development environments
- [ ] **Load balancing** - Handle high traffic
- [ ] **Database optimization** - Indexing and query performance
- [ ] **Monitoring** - Error tracking with Sentry
- [ ] **TypeScript migration** - Type safety across codebase

### Data Structure Additions
- [ ] **Trie** - Autocomplete for skill search
- [ ] **B-Tree** - Efficient database-like indexing
- [ ] **Red-Black Tree** - Self-balancing for sorted data
- [ ] **Hash Table** - Fast key-value lookups
- [ ] **Bloom Filter** - Probabilistic duplicate detection

---

## 📄 License

This project is licensed under the **MIT License**.

```
MIT License

Copyright (c) 2026 SkillScreen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## 👥 Project Team & Contributors

**Developers:**
- DSA Final Project Team

**Project Type:**
Educational demonstration of data structures and algorithms in production web applications

**Academic Context:**
3rd Semester DSA Final Project - University Course

---

## 🙏 Acknowledgments

### Technologies & Services
- **React Team** - Outstanding JavaScript framework
- **Supabase** - Excellent PostgreSQL hosting and real-time features
- **Google Cloud** - OAuth 2.0 authentication services
- **Tailwind Labs** - Beautiful utility-first CSS framework
- **Vercel** - Lightning-fast build tools with Vite

### Educational Resources
- **GeeksforGeeks** - Data structure implementations and algorithms
- **LeetCode** - Problem-solving practice
- **MDN Web Docs** - JavaScript and web API references
- **React Documentation** - Best practices and patterns

### Inspiration
- **LinkedIn** - UI/UX design inspiration
- **Indeed/Glassdoor** - Job platform workflow patterns
- **HackerRank** - MCQ and coding assessment ideas

---

## 📞 Support & Contact

**Issues & Bug Reports:**  
Open an issue on GitHub with detailed description and reproduction steps

**Feature Requests:**  
Submit via GitHub Issues with `[Feature Request]` tag

**Questions:**  
Check existing issues or create new discussion

---

## 🌟 Project Highlights

> **"Built from scratch"** - Every data structure manually coded, no external DS libraries  
> **"Production-ready"** - Full authentication, database, and deployment configuration  
> **"Real-world application"** - Solves actual HR screening problems  
> **"Educational excellence"** - Demonstrates DSA concepts in practical scenarios  

**⭐ Star this repository if you found it helpful for learning DSA implementation!**

---

**Last Updated:** January 5, 2026  
**Version:** 1.0.0  
**Status:** Active Development
