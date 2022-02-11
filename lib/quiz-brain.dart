import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 1: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank ให้มีอย่างน้อย 5 คำถาม
  List<Question> _questionBank=[
    Question(q: 'Yellow + Blue = Green', a: true),
    Question(q: 'Red + Orange = Pink', a: false),
    Question(q: 'Maroon + Beige = Brown', a: false),
    Question(q: 'Black + White = Gray', a: true),
    Question(q: 'Navy + Lime = Violet', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber <_questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}