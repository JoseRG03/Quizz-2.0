import 'package:flutter/material.dart';
import 'package:quiz_upgrade/pages/landing_page.dart';

void main() => runApp(NewQuizApp());

class NewQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Quiz',
      home: LandingPage()
    );
  }
}
