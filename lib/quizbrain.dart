import 'question.dart';

int _QuestionNumber = 0;

class QuizBrain {
  List<Question> _questionbank = [
    Question('There are Two Hundred and six bones in our human body.', true),
    Question('Lima is the capital of Peru.', true),
    Question("Sabre-toothed Tigers are not Extinct.", false),
    Question("The five rings on the Olympic flag are interlocking", true),
    Question("Mount Kilimanjaro is the highest mountain in the world", false),
    Question("A group of swans is known as a bevy?", true),
    Question("Sydney is the capital of Australia", false),
    Question("Penny Black is an old-fashioned coin", false),
    Question("a heptagon has eight sides", false),
    Question("the star sign Capricorn is represented by a goat", true),
    Question("seahorses have no teeth or stomach", true),
    Question(
        "the knight is the only piece in chess which can only move diagonally",
        false),
    Question(
        "Nepal is the only country in the world which does not have a rectangular flag",
        true),
    Question("In Harry Potter, Draco Malfoy has no siblings", true),
  ];

  String checkanswers() {
    return _questionbank[_QuestionNumber].questiontext;
  }

  bool getanswer() {
    return _questionbank[_QuestionNumber].questionanswer;
  }

  void nextquestion() {
    if (_QuestionNumber < _questionbank.length - 1) {
      _QuestionNumber++;
    }
  }

  bool isFinished() {
    if (_QuestionNumber >= _questionbank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _QuestionNumber = 0;
  }
}
