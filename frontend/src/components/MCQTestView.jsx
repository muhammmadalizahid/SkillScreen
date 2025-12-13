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

    // Push answer to stack (for undo functionality)
    const answerData = {
      question: currentQuestion,
      selectedAnswer,
      isCorrect: selectedAnswer === currentQuestion.answer
    };

    answerStack.push(answerData);
    setAnsweredQuestions([...answeredQuestions, answerData]);

    // Update score
    if (answerData.isCorrect) {
      setScore(score + 1);
    }

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

      // Update score
      if (lastAnswer.isCorrect) {
        setScore(score - 1);
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
    const percentage = ((score / questions.length) * 100).toFixed(2);
    
    return (
      <div className="max-w-4xl mx-auto p-6 bg-white rounded-lg shadow-md">
        <h2 className="text-2xl font-bold mb-6">Test Complete!</h2>
        
        <div className="text-center p-8 bg-blue-50 rounded-lg mb-6">
          <div className="text-6xl font-bold text-blue-600 mb-4">
            {score}/{questions.length}
          </div>
          <div className="text-2xl text-gray-700">
            Score: {percentage}%
          </div>
        </div>

        <div className="space-y-4 mb-6">
          <h3 className="text-lg font-semibold">Review Your Answers:</h3>
          {answeredQuestions.map((ans, index) => (
            <div key={index} className={`p-4 rounded-lg ${ans.isCorrect ? 'bg-green-50' : 'bg-red-50'}`}>
              <p className="font-medium mb-2">{ans.question.question}</p>
              <p className="text-sm">
                Your answer: <strong>{ans.selectedAnswer}</strong>
                {!ans.isCorrect && (
                  <span className="ml-2 text-red-600">
                    (Correct: {ans.question.answer})
                  </span>
                )}
              </p>
            </div>
          ))}
        </div>

        <button
          onClick={() => onComplete(score, percentage)}
          className="w-full py-3 bg-blue-600 text-white font-semibold rounded-lg hover:bg-blue-700"
        >
          Finish and Get AI Feedback
        </button>
      </div>
    );
  }

  if (!currentQuestion) {
    return <div className="text-center p-8">Loading questions...</div>;
  }

  return (
    <div className="max-w-4xl mx-auto p-6 bg-white rounded-lg shadow-md">
      <div className="flex justify-between items-center mb-6">
        <h2 className="text-2xl font-bold">MCQ Test</h2>
        <div className="text-sm text-gray-600">
          Question {answeredQuestions.length + 1} of {questions.length}
        </div>
      </div>

      {/* Progress Bar */}
      <div className="w-full bg-gray-200 rounded-full h-2 mb-6">
        <div
          className="bg-blue-600 h-2 rounded-full transition-all"
          style={{ width: `${((answeredQuestions.length) / questions.length) * 100}%` }}
        />
      </div>

      {/* Question */}
      <div className="mb-6 p-4 bg-gray-50 rounded-lg">
        <p className="text-lg font-medium mb-4">{currentQuestion.question}</p>

        <div className="space-y-3">
          {currentQuestion.options.map((option, index) => (
            <label
              key={index}
              className="flex items-center p-3 border rounded-lg cursor-pointer hover:bg-blue-50"
            >
              <input
                type="radio"
                name="answer"
                value={option}
                checked={selectedAnswer === option}
                onChange={(e) => setSelectedAnswer(e.target.value)}
                className="mr-3"
              />
              <span>{option}</span>
            </label>
          ))}
        </div>
      </div>

      {/* Actions */}
      <div className="flex gap-4">
        <button
          onClick={handleUndo}
          disabled={answerStack.isEmpty()}
          className={`flex-1 py-3 font-semibold rounded-lg ${
            answerStack.isEmpty()
              ? 'bg-gray-300 text-gray-500 cursor-not-allowed'
              : 'bg-yellow-500 text-white hover:bg-yellow-600'
          }`}
        >
          Undo Last Answer (Stack)
        </button>
        <button
          onClick={handleSubmitAnswer}
          className="flex-1 py-3 bg-blue-600 text-white font-semibold rounded-lg hover:bg-blue-700"
        >
          Submit Answer
        </button>
      </div>

      {/* Current Score */}
      <div className="mt-4 text-center text-gray-600">
        Current Score: {score}/{answeredQuestions.length}
      </div>
    </div>
  );
};

export default MCQTestView;
