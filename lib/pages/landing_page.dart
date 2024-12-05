import 'package:flutter/material.dart';
import 'package:quiz_upgrade/pages/quiz_page.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to the Flutter Quiz App!", textAlign: TextAlign.center, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            TextButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return QuizPage();
              }));
            }, child: Text('Start Quiz')),
          ],
        ),
      ),
    );
  }
}
