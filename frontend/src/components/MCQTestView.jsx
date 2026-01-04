import { useState, useEffect } from 'react';
import Queue from '../dsa/Queue';
import Stack from '../dsa/Stack';

const MCQTestView = ({ questions, onComplete }) => {
  const [questionQueue] = useState(() => {
    const q = new Queue();
    questions.forEach(question => q.enqueue(question));
    return q;
  });

  const [answerStack] = useState(new Stack());
  const [currentQuestion, setCurrentQuestion] = useState(null);
  const [selectedAnswer, setSelectedAnswer] = useState('');
  const [answeredQuestions, setAnsweredQuestions] = useState([]);
  const [score, setScore] = useState(0);
  const [isComplete, setIsComplete] = useState(false);

  useEffect(() => {
    // Load first question from queue
    loadNextQuestion();
  }, []);

  const loadNextQuestion = () => {
    const next = questionQueue.dequeue();
    if (next) {
      setCurrentQuestion(next);
      setSelectedAnswer('');
    } else {
      setIsComplete(true);
    }
  };

  const handleSubmitAnswer = () => {
    if (!selectedAnswer) {
      alert('Please select an answer');
      return;
    }

    // Extract just the letter (A, B, C, D) from the option string
    const answerLetter = selectedAnswer.split(':')[0].trim();

    // Push answer to stack (for undo functionality)
    const answerData = {
      question: currentQuestion,
      selectedAnswer: answerLetter
    };

    answerStack.push(answerData);
    setAnsweredQuestions([...answeredQuestions, answerData]);

    // Load next question
    loadNextQuestion();
  };

  const handleUndo = () => {
    // Pop from stack
    const lastAnswer = answerStack.pop();
    if (lastAnswer) {
      // Re-enqueue the question to front (simulate going back)
      const tempQueue = new Queue();
      tempQueue.enqueue(lastAnswer.question);
      
      // Re-add remaining questions
      while (!questionQueue.isEmpty()) {
        tempQueue.enqueue(questionQueue.dequeue());
      }

      // Update queue
      while (!tempQueue.isEmpty()) {
        questionQueue.enqueue(tempQueue.dequeue());
      }

      // Update answered questions
      const newAnswered = [...answeredQuestions];
      newAnswered.pop();
      setAnsweredQuestions(newAnswered);

      // Load the undone question
      setCurrentQuestion(lastAnswer.question);
      setSelectedAnswer('');
      setIsComplete(false);
    }
  };

  if (isComplete) {
    // Submit all answers to backend for verification
    const userAnswers = answeredQuestions.map(ans => ans.selectedAnswer);
    onComplete(userAnswers); // Pass answers to parent for backend submission
    
    return (
      <div className="max-w-5xl mx-auto bg-white rounded-lg border border-gray-200 shadow-lg p-8 text-center">
        <div className="animate-pulse space-y-6">
          <div className="h-8 bg-gray-200 rounded w-2/3 mx-auto"></div>
          <div className="h-32 bg-gray-200 rounded"></div>
        </div>
        <div className="mt-8">
          <div className="animate-spin border-4 border-gray-200 border-t-[#0a66c2] rounded-full h-12 w-12 mx-auto mb-4"></div>
          <p className="text-base text-gray-600 font-medium">Submitting your answers...</p>
          <p className="text-sm text-gray-500 mt-2">Calculating your score</p>
        </div>
      </div>
    );
  }

  if (!currentQuestion) {
    return <div className="text-center p-8">Loading questions...</div>;
  }

  return (
    <div className="max-w-5xl mx-auto bg-white rounded-lg border border-gray-200 shadow-lg p-8">
      <div className="flex justify-between items-center mb-6">
        <h2 className="text-3xl font-bold text-gray-900">Assessment Test</h2>
        <div className="text-base font-semibold text-gray-700 bg-gray-100 px-4 py-2 rounded-full">
          {answeredQuestions.length + 1} / {questions.length}
        </div>
      </div>

      {/* Progress Bar */}
      <div className="w-full bg-gray-200 h-2 rounded-full mb-8 overflow-hidden">
        <div
          className="bg-[#0a66c2] h-2 transition-all duration-300 ease-out"
          style={{ width: `${((answeredQuestions.length) / questions.length) * 100}%` }}
        />
      </div>

      {/* Question */}
      <div className="mb-8 p-6 bg-[#f3f2ef] rounded-lg border border-gray-300">
        <p className="text-lg font-semibold text-gray-900 mb-6 leading-relaxed">{currentQuestion.question}</p>

        <div className="space-y-3">
          {currentQuestion.options.map((option, index) => (
            <label
              key={index}
              className={`flex items-center p-4 rounded-lg cursor-pointer transition-all ${
                selectedAnswer === option
                  ? 'bg-[#0a66c2] bg-opacity-10 border-2 border-[#0a66c2] shadow-md'
                  : 'bg-white border-2 border-gray-200 hover:border-[#0a66c2] hover:shadow-sm'
              }`}
            >
              <input
                type="radio"
                name="answer"
                value={option}
                checked={selectedAnswer === option}
                onChange={(e) => setSelectedAnswer(e.target.value)}
                className="mr-4 w-5 h-5 text-[#0a66c2] focus:ring-[#0a66c2]"
              />
              <span className={`text-sm font-medium ${
                selectedAnswer === option ? 'text-[#0a66c2]' : 'text-gray-900'
              }`}>{option}</span>
            </label>
          ))}
        </div>
      </div>

      {/* Actions */}
      <div className="flex gap-4">
        <button
          onClick={handleUndo}
          disabled={answerStack.isEmpty()}
          className={`flex-1 py-3 text-sm font-semibold rounded-lg transition-all ${
            answerStack.isEmpty()
              ? 'bg-gray-100 text-gray-400 cursor-not-allowed border-2 border-gray-200'
              : 'bg-white text-gray-700 border-2 border-gray-300 hover:border-gray-400 hover:shadow-md'
          }`}
        >
          Undo Last Answer
        </button>
        <button
          onClick={handleSubmitAnswer}
          disabled={!selectedAnswer}
          className={`flex-1 py-3 text-sm font-semibold rounded-lg transition-all ${
            selectedAnswer
              ? 'bg-[#0a66c2] text-white hover:bg-[#004182] shadow-md hover:shadow-lg'
              : 'bg-gray-300 text-gray-500 cursor-not-allowed'
          }`}
        >
          Submit Answer
        </button>
      </div>
    </div>
  );
};

export default MCQTestView;
