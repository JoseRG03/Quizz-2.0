import 'package:quiz_upgrade/models/quiz_answer.dart';

class QuizResults {
  final List<QuizAnswer> responses;
  final int score;

  QuizResults({required this.responses, required this.score});
}
