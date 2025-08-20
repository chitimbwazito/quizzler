import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(
      questionText: 'The Great Wall of China is visible from space.',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Lightning never strikes the same place twice.',
      questionAnswer: false,
    ),
    Question(questionText: 'Bananas grow on trees.', questionAnswer: false),
    Question(
      questionText: 'Goldfish only have a memory span of three seconds.',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Humans share approximately 60% of their DNA with bananas.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'An octopus has three hearts.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'The capital of Australia is Sydney.',
      questionAnswer: false,
    ),
    Question(questionText: 'Sharks are mammals.', questionAnswer: false),
    Question(
      questionText: 'The Eiffel Tower can grow taller in summer.',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'There are more stars in the universe than grains of sand on Earth.',
      questionAnswer: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
