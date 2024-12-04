import 'package:flutter/material.dart';
import 'package:quiz_upgrade/api/quiz_service.dart';
import 'package:quiz_upgrade/pages/quiz_page.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  final api_service = QuizService();


  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return QuizPage(quiz: api_service.getQuizQuestions());
      }));
    }, child: const Text('Start Quiz'));
  }
}
