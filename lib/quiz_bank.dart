import 'question.dart';

class QuizBank {
  int _questionNumber = 0;

  final List<Question> _questions = [
    Question(
      questionText: 'You can lead a cow down stairs but not up to stairs.',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Approximately one quarter og human bones are in the feet.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'A slug\'s blood is green.',
      questionAnswer: true,
    )
  ];

  String getQuestionText() => _questions[_questionNumber].questionText;

  bool getQuestionAnswer() => _questions[_questionNumber].questionAnswer;

  void getNextQuestion() => _questionNumber++;

  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() => _questionNumber = 0;
}
