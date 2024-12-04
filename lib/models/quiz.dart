part 'question.dart';

class Quiz {
  final List<Question> question_list;

  Quiz({
    required this.question_list,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) {
    return Quiz(
      question_list:
          List<Question>.from(json['results'].map((x) => Question.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    'question_list': List<dynamic>.from(question_list.map((x) => x.toJson()))
  };
}
