# SkillScreen - AI-Powered CS Job Screening Platform

[![React](https://img.shields.io/badge/React-18.2-blue.svg)](https://reactjs.org/)
[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![Express](https://img.shields.io/badge/Express-4.18-lightgrey.svg)](https://expressjs.com/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind-3.3-38B2AC.svg)](https://tailwindcss.com/)

A comprehensive job screening platform for Computer Science positions, featuring **manually implemented data structures** and **AI-powered assessment**.

## 🎯 Project Overview

SkillScreen is a full-stack web application that demonstrates the practical application of data structures and algorithms in a real-world scenario. The platform covers the entire CS domain including Web Development, Software Engineering, AI/ML, Cybersecurity, DevOps, and Data Science.

### Key Features

- **Manual Data Structures Implementation**: All core data structures coded from scratch
  - 🔗 **LinkedList**: Job skills management
  - 📚 **Stack**: MCQ undo functionality
  - 🔄 **Queue**: Question delivery (FIFO)
  - 📊 **MaxHeap**: Candidate ranking
  - 🌐 **Graph**: Skill dependency validation (BFS/DFS)
  - 🌲 **Tree**: Question bank hierarchy

- **AI Integration**
  - 🤖 Gemini API for automated MCQ generation
  - 💡 Personalized feedback based on performance
  - 📈 Skill gap analysis

- **Complete Workflow**
  - Job posting with weighted skill requirements
  - Candidate self-assessment with validation
  - AI-generated MCQs tailored to skill level
  - Automated ranking using MaxHeap
  - Comprehensive feedback with learning recommendations

## 🏗️ Tech Stack

### Frontend
- **React.js** - UI framework
- **Vite** - Build tool
- **React Router** - Navigation
- **Tailwind CSS** - Styling
- **Axios** - HTTP client

### Backend
- **Node.js** - Runtime environment
- **Express** - Web framework
- **Supabase** - PostgreSQL database
- **Gemini API** - AI integration
- **bcrypt** - Password hashing
- **dotenv** - Environment management

## 📁 Project Structure

```
SkillScreen/
├── frontend/
│   ├── src/
│   │   ├── components/          # React components
│   │   │   ├── JobPostingForm.jsx
│   │   │   ├── CandidateApplicationForm.jsx
│   │   │   ├── MCQTestView.jsx
│   │   │   ├── RecruiterDashboard.jsx
│   │   │   └── AIFeedbackPanel.jsx
│   │   ├── pages/              # Page components
│   │   │   ├── Home.jsx
│   │   │   ├── Jobs.jsx
│   │   │   ├── Apply.jsx
│   │   │   └── Dashboard.jsx
│   │   ├── dsa/                # Manual data structures
│   │   │   ├── LinkedList.js
│   │   │   ├── Stack.js
│   │   │   ├── Queue.js
│   │   │   ├── MaxHeap.js
│   │   │   ├── Graph.js
│   │   │   └── Tree.js
│   │   ├── services/           # API services
│   │   ├── context/            # React context
│   │   └── utils/              # Utility functions
│   └── package.json
├── backend/
│   ├── src/
│   │   ├── controllers/        # Route controllers
│   │   ├── routes/             # API routes
│   │   ├── services/           # Business logic with DS
│   │   ├── middlewares/        # Express middlewares
│   │   └── config/             # Configuration files
│   └── package.json
└── README.md
```

## 🚀 Getting Started

### Prerequisites
- Node.js (v18 or higher)
- npm or yarn
- Supabase account (optional, works with mock data)
- Gemini API key (optional, uses fallback)

### Installation

1. **Clone the repository**
```bash
git clone <repository-url>
cd SkillScreen
```

2. **Setup Backend**
```bash
cd backend
npm install

# Copy environment variables
copy .env.example .env

# Edit .env and add your credentials:
# - SUPABASE_URL
# - SUPABASE_KEY
# - GEMINI_API_KEY
```

3. **Setup Frontend**
```bash
cd ../frontend
npm install

# Copy environment variables
copy .env.example .env

# Edit .env and add:
# - VITE_API_BASE_URL=http://localhost:3000/api
# - VITE_GEMINI_API_KEY
```

4. **Initialize Tailwind CSS**
```bash
npx tailwindcss init -p
```

### Running the Application

1. **Start Backend Server**
```bash
cd backend
npm run dev
# Server runs on http://localhost:3000
```

2. **Start Frontend Development Server**
```bash
cd frontend
npm run dev
# Application runs on http://localhost:5173
```

3. **Access the Application**
Open your browser and navigate to `http://localhost:5173`

## 📊 Data Structures Usage

### LinkedList
**Purpose**: Store and manage job skills dynamically

**Implementation**: Manual node-based linked list with insert, delete, search operations

**Usage**: Job posting form adds skills to a linked list, ensuring efficient sequential access

### Stack
**Purpose**: Implement undo functionality in MCQ tests

**Implementation**: LIFO structure using nodes

**Usage**: Each answer is pushed to stack; undo pops the last answer and re-queues the question

### Queue
**Purpose**: Deliver MCQ questions in order

**Implementation**: FIFO structure with front and rear pointers

**Usage**: Questions are enqueued after generation; dequeued one by one during test

### MaxHeap
**Purpose**: Rank candidates efficiently

**Implementation**: Array-based binary heap with heapify operations

**Usage**: Insert all candidates with scores; extract top N for recruiter dashboard

### Graph
**Purpose**: Validate skill dependencies

**Implementation**: Adjacency list with BFS/DFS traversal

**Usage**: Check if candidate's high-scored skills have prerequisite skills at reasonable levels

### Tree
**Purpose**: Organize question bank hierarchically

**Implementation**: Binary tree with level-order insertion

**Usage**: Structure questions by difficulty and topic for efficient retrieval

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

### Jobs
- `POST /api/jobs` - Create job
- `GET /api/jobs` - Get all jobs
- `GET /api/jobs/:id` - Get job by ID
- `PUT /api/jobs/:id` - Update job
- `DELETE /api/jobs/:id` - Delete job

### Applications
- `POST /api/applications` - Submit application
- `GET /api/applications` - Get applications
- `GET /api/applications/:id` - Get application by ID
- `GET /api/applications/ranked/:jobId` - Get ranked candidates

### MCQs
- `POST /api/mcqs/generate` - Generate MCQs
- `POST /api/mcqs/submit` - Submit answers

### Feedback
- `POST /api/feedback/generate` - Generate feedback
- `GET /api/feedback/:applicationId` - Get feedback

## 🎨 Features Walkthrough

### 1. Job Posting
- Recruiter creates job with title, domain, description
- Adds skills with weights (1-10) using LinkedList
- Defines skill dependencies using Graph
- System validates no circular dependencies

### 2. Candidate Application
- Candidate views job details
- Self-assesses skills (1-10 rating)
- Graph-based validation checks skill consistency
- Application stored with timestamp

### 3. MCQ Test
- AI generates questions via Gemini API
- Questions delivered via Queue (FIFO)
- Answers stored in Stack for undo
- Auto-grading on submission

### 4. Ranking
- All candidates inserted into MaxHeap
- Scores calculated with weighted skills + test score
- Top N candidates extracted using heap operations
- Displayed on recruiter dashboard

### 5. AI Feedback
- Candidate profile sent to Gemini API
- Receives personalized feedback JSON
- Displays strengths, weaknesses, recommendations
- Learning path suggestions

## 🛠️ Development

### Building for Production

**Frontend**
```bash
cd frontend
npm run build
```

**Backend**
```bash
cd backend
npm start
```

### Environment Variables

**Backend (.env)**
```env
PORT=3000
SUPABASE_URL=your_supabase_url
SUPABASE_KEY=your_supabase_key
GEMINI_API_KEY=your_gemini_api_key
JWT_SECRET=your_jwt_secret
```

**Frontend (.env)**
```env
VITE_API_BASE_URL=http://localhost:3000/api
VITE_GEMINI_API_KEY=your_gemini_api_key
```

## 📚 Learning Objectives

This project demonstrates:
1. **Manual implementation** of fundamental data structures
2. **Practical application** of DS&A in real-world scenarios
3. **Full-stack development** with modern technologies
4. **AI integration** for intelligent features
5. **RESTful API design** and implementation
6. **State management** in React applications
7. **Database operations** with Supabase
8. **Responsive UI design** with Tailwind CSS

## 🔮 Future Enhancements

- [ ] Add short-answer micro-tasks
- [ ] Implement adaptive question difficulty
- [ ] Expand to more CS domains
- [ ] Add recruiter analytics dashboard
- [ ] Implement real-time notifications
- [ ] Add video interview scheduling
- [ ] Create mobile applications
- [ ] Implement comprehensive test coverage

## 📄 License

This project is licensed under the MIT License.

## 👥 Contributors

Built as a DSA Final Project demonstrating practical applications of data structures and algorithms.

## 🙏 Acknowledgments

- React team for the amazing framework
- Gemini API for AI capabilities
- Supabase for database hosting
- Tailwind CSS for styling utilities

---

**Note**: This project is designed for educational purposes to demonstrate the implementation and usage of manual data structures in a real-world application.
