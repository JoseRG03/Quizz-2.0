part of 'quiz.dart';

class Question {
  final String question;
  final String correct_answer;
  final List<String> incorrect_answers;

  Question({
    required this.question,
    required this.correct_answer,
    required this.incorrect_answers,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      question: json['question'] ?? '',
      correct_answer: json['correct_answers'] ?? '',
      incorrect_answers: List<String>.from(json['incorrect_answers'].map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    'question': question,
    'correct_answer': correct_answer,
    'incorrect_answers': List<dynamic>.from(incorrect_answers.map((x) => x)),
  };

}
