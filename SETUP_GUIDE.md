# SkillScreen Setup & Development Guide

## 📋 Complete Implementation Summary

The SkillScreen project has been fully implemented with all required features:

### ✅ Manual Data Structures (All Implemented from Scratch)
1. **LinkedList** - Job skills management
2. **Stack** - MCQ undo functionality  
3. **Queue** - Question delivery (FIFO)
4. **MaxHeap** - Candidate ranking
5. **Graph** - Skill dependency validation (BFS/DFS)
6. **Tree** - Question bank hierarchy

### ✅ Frontend Components
- JobPostingForm - Create jobs with skills and dependencies
- CandidateApplicationForm - Apply with self-assessment
- MCQTestView - Take MCQ test with undo feature
- RecruiterDashboard - View ranked candidates
- AIFeedbackPanel - Display personalized feedback

### ✅ Backend Services
- skillService - Job management with LinkedList
- validationService - Candidate ranking with MaxHeap, validation with Graph
- mcqService - MCQ generation with Queue
- feedbackService - AI feedback generation

### ✅ AI Integration
- Gemini API for MCQ generation
- Gemini API for personalized feedback

## 🚀 Quick Start Guide

### Step 1: Install Dependencies

**Backend:**
```powershell
cd backend
npm install
```

**Frontend:**
```powershell
cd frontend
npm install
```

### Step 2: Configure Environment Variables

**Backend (.env):**
```powershell
cd backend
copy .env.example .env
```

Edit `backend/.env` and add:
```env
PORT=3000
NODE_ENV=development
SUPABASE_URL=your_supabase_url_here
SUPABASE_KEY=your_supabase_key_here
GEMINI_API_KEY=your_gemini_api_key_here
JWT_SECRET=your_random_secret_key
CORS_ORIGIN=http://localhost:5173
```

**Frontend (.env):**
```powershell
cd frontend
copy .env.example .env
```

Edit `frontend/.env` and add:
```env
VITE_API_BASE_URL=http://localhost:3000/api
VITE_GEMINI_API_KEY=your_gemini_api_key_here
```

### Step 3: Run the Application

**Terminal 1 - Backend:**
```powershell
cd backend
npm run dev
```
Backend will run on http://localhost:3000

**Terminal 2 - Frontend:**
```powershell
cd frontend
npm run dev
```
Frontend will run on http://localhost:5173

### Step 4: Access the Application

Open your browser and navigate to: **http://localhost:5173**

## 🔑 Getting API Keys

### Supabase Setup (Optional - works without it)
1. Go to https://supabase.com
2. Create a new project
3. Get your project URL and anon key from Settings > API
4. Add to backend/.env

### Gemini API Key
1. Go to https://makersuite.google.com/app/apikey
2. Create an API key
3. Add to both backend/.env and frontend/.env

**Note:** The application works with mock data if these are not configured.

## 📊 Project Features & Data Structure Usage

### 1. Job Posting (LinkedList + Graph)
- Navigate to "Jobs" → "Post a Job"
- Add skills using LinkedList (insert, delete operations)
- Define dependencies using Graph (directed edges)
- System validates no circular dependencies

### 2. Candidate Application (Graph Validation)
- Click "Apply Now" on any job
- Self-assess skills (1-10 rating)
- Graph BFS checks skill consistency
- Example: If React = 9, JavaScript should be ≥ 5

### 3. MCQ Test (Queue + Stack)
- Questions delivered via Queue (FIFO)
- Each answer pushed to Stack
- "Undo" pops from Stack and re-queues question
- Auto-grading on completion

### 4. Candidate Ranking (MaxHeap)
- Go to "Dashboard"
- All candidates inserted into MaxHeap
- Weighted score: (skill_score × weight) + test_score
- Top N extracted using extractMax()

### 5. AI Feedback (Gemini API)
- After test completion
- Gemini analyzes performance
- Returns strengths, weaknesses, skill gaps
- Provides learning recommendations

## 🧪 Testing the Features

### Test Job Posting
1. Go to Jobs → Post a Job
2. Title: "Full Stack Developer"
3. Domain: "Web Development"
4. Add skills:
   - JavaScript (weight: 9)
   - React (weight: 8)
   - Node.js (weight: 7)
5. Add dependency: React → JavaScript
6. Submit

### Test Application Flow
1. Click "Apply Now"
2. Fill details and self-assess
3. Try: React=9, JavaScript=4 (should fail validation)
4. Fix: React=8, JavaScript=7 (should pass)
5. Complete MCQ test
6. View AI feedback

### Test Recruiter Dashboard
1. Navigate to Dashboard
2. Select job from dropdown
3. See candidates ranked by MaxHeap
4. Try different "Top N" values
5. Click candidate to view details

## 📁 Key Files to Explore

### Data Structures (Frontend)
- `frontend/src/dsa/LinkedList.js` - Job skills
- `frontend/src/dsa/Stack.js` - Undo functionality
- `frontend/src/dsa/Queue.js` - Question delivery
- `frontend/src/dsa/MaxHeap.js` - Candidate ranking
- `frontend/src/dsa/Graph.js` - Dependency validation
- `frontend/src/dsa/Tree.js` - Question hierarchy

### Backend Services (DS Usage)
- `backend/src/services/skillService.js` - LinkedList usage
- `backend/src/services/validationService.js` - Graph + MaxHeap
- `backend/src/services/mcqService.js` - Queue usage
- `backend/src/services/feedbackService.js` - AI integration

### Frontend Components
- `frontend/src/components/JobPostingForm.jsx`
- `frontend/src/components/CandidateApplicationForm.jsx`
- `frontend/src/components/MCQTestView.jsx`
- `frontend/src/components/RecruiterDashboard.jsx`
- `frontend/src/components/AIFeedbackPanel.jsx`

## 🐛 Troubleshooting

### Issue: "Cannot find module"
**Solution:** Run `npm install` in both frontend and backend

### Issue: Backend won't start
**Solution:** 
1. Check if port 3000 is free
2. Verify .env file exists in backend/
3. Check all environment variables are set

### Issue: Frontend won't start
**Solution:**
1. Check if port 5173 is free
2. Verify .env file exists in frontend/
3. Run `npm install` again

### Issue: CORS errors
**Solution:** Ensure backend .env has:
```env
CORS_ORIGIN=http://localhost:5173
```

### Issue: Gemini API errors
**Solution:** 
1. Verify API key is correct
2. Check internet connection
3. App will use fallback data if API fails

## 🎯 Development Workflow

### Adding a New Feature
1. Plan which data structure to use
2. Implement DS operation if needed
3. Create/update backend service
4. Add API endpoint in controller
5. Create/update frontend component
6. Test thoroughly

### Modifying Data Structures
All DS implementations are in:
- Frontend: `frontend/src/dsa/`
- Backend: Inside service files

**Important:** Keep DS implementations pure (no external libraries)

## 📚 Code Organization

### Frontend Structure
```
frontend/src/
├── components/     # React components
├── pages/          # Route pages
├── dsa/           # Manual data structures
├── services/      # API calls
├── context/       # React context
└── utils/         # Helper functions
```

### Backend Structure
```
backend/src/
├── controllers/   # Request handlers
├── routes/        # API routes
├── services/      # Business logic + DS
├── middlewares/   # Express middlewares
└── config/        # Configuration
```

## 🚢 Deployment Considerations

### Frontend Deployment (Vercel/Netlify)
1. Build: `npm run build`
2. Deploy `dist/` folder
3. Set environment variables in platform

### Backend Deployment (Heroku/Railway)
1. Ensure all dependencies in package.json
2. Set environment variables
3. Deploy with `npm start` script

### Database (Supabase)
- Already cloud-hosted
- Create tables as needed
- Use migrations for schema changes

## 📈 Performance Notes

### Data Structure Complexities
- LinkedList insert: O(n)
- Stack push/pop: O(1)
- Queue enqueue/dequeue: O(1)
- MaxHeap insert: O(log n)
- MaxHeap extractMax: O(log n)
- Graph BFS: O(V + E)

### Optimization Tips
1. Use pagination for large candidate lists
2. Cache MCQ questions
3. Implement lazy loading
4. Add database indexing
5. Use Redis for session storage

## 🎓 Learning Resources

### Data Structures
- Visualizations: https://visualgo.net/
- Practice: https://leetcode.com/

### React & Node.js
- React Docs: https://react.dev
- Node.js Docs: https://nodejs.org/docs

### AI Integration
- Gemini API: https://ai.google.dev/docs

## ✨ Next Steps

1. **Test all features** thoroughly
2. **Add your API keys** for full functionality
3. **Customize** for your specific use case
4. **Deploy** to production
5. **Add tests** for robustness

## 🤝 Support

For issues or questions:
1. Check troubleshooting section
2. Review code comments
3. Check console logs for errors
4. Verify environment variables

---

**Project Status:** ✅ Complete and Ready to Run

All manual data structures implemented, all components created, full AI integration ready!
