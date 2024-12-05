import 'package:quiz_upgrade/models/quiz.dart';
import 'package:quiz_upgrade/models/quiz_answer.dart';
import 'package:quiz_upgrade/models/quiz_results.dart';

class QuizBrain {
  
  int _questionNumber = 0;
  List<String> userAnswers = [];
  int score = 0;

  final List<Question> _questionBank = [
    Question(question: "How long are all the cutscenes from Metal Gear Solid 4 (PS3, 2008) combined?", correct_answer: 2, options: ["4 hours","12 hours","8 hours", "5 hours"]),
    Question(question:"According to Overwatch's lore, who was once a member of the Deadlock Gang?", correct_answer: 0, options:["McCree", "Roadhog","Soldier 76","Junkrat"]),
    Question(question:"The creator of the Touhou Project series is:", correct_answer: 1 , options:["SUN", "ZUN", "RUN","PUN"]),
    Question(question:"Which of the following Elite Four members from the 6th Generation of Pokémon was a member of Team Flare?", correct_answer: 3, options:["Siebold","Wikstrom","Drasna", "Malva"]),
    Question(question:"What was the name of the Secret Organization in the Hotline Miami series? ", correct_answer: 1 , options:["American Blessings", "50 Blessings", "50 Saints","USSR's Blessings"]),
  ];

  String getCurrentQuestion() {
    return _questionBank[_questionNumber].question;
  }

  List<String> getOptions() {
    return _questionBank[_questionNumber].options;
  }

  int getCurrentAnswer() {
    return _questionBank[_questionNumber].correct_answer;
  }

  void validateAnswer(String userAnswer) {
    List<String> options = getOptions();
    int correctAnswer =  getCurrentAnswer();

    userAnswers.add(userAnswer);
    if (userAnswer == options[correctAnswer]) {
      score++;
    }
  }

  int nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      return 1;
    } else {
      return -1;
    }
  }

  QuizResults getFinalResults() {
    List<QuizAnswer> responses = [];
    int counter = 0;

    _questionBank.forEach((question) {
      String correctAnswer = question.options[question.correct_answer];
      String userAnswer = userAnswers[counter];
      responses.add(QuizAnswer(question: question.question, correctAnswer: correctAnswer, userAnswer: userAnswer));
      counter++;
    });
    
    return QuizResults(responses: responses, score: score);
  }

  void resetQuestions() {
    _questionNumber = 0;
  }
}