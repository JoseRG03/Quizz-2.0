import 'package:flutter/material.dart';
import 'package:quiz_upgrade/components/results_screen.dart';
import 'package:quiz_upgrade/controllers/quiz_controller.dart';

import 'package:quiz_upgrade/models/quiz.dart';

// import '../api/quiz_service.dart';
import '../components/MyButton.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  var quizBrain = QuizBrain();
  bool quizFinished = false;

  void handleQuestionSubmit(String userAnswer) {
    setState(() {
      quizBrain.validateAnswer(userAnswer);

      int nextQuestion = quizBrain.nextQuestion();

      if (nextQuestion != 1) {
        quizFinished = true;
      }
    });
  }

  List<Widget> createOptions() {
    final options = <Widget>[];

    quizBrain.getOptions().forEach((option) {
      final optionButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: MyButton(
          onTap: () {handleQuestionSubmit(option);},
          buttonColor: Colors.purple,
          buttonText: option,
          ),
      );

      options.add(optionButton);
    });

    return options;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: quizFinished ? ResultsScreen(results: quizBrain.getFinalResults()) : Column(
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(quizBrain.getCurrentQuestion(), textAlign: TextAlign.center,),
              ),
            ),
            Column(
              children: createOptions(),
            )
          ],
        ),
      ),
    );
  }
}
