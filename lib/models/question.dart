part of 'quiz.dart';

class Question {
  final String question;
  final int correct_answer;
  final List<String> options;

  Question({
    required this.question,
    required this.correct_answer,
    required this.options,
  });

  factory Question.fromJson(Map<String, dynamic> json) { //TODO: Modify Structure to allow for the JSON's structure
    return Question(
      question: json['question'] ?? '',
      correct_answer: json['correct_answers'] ?? '',
      options: List<String>.from(json['incorrect_answers'].map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    'question': question,
    'correct_answer': correct_answer,
    'incorrect_answers': List<dynamic>.from(options.map((x) => x)),
  };

}
