import 'package:flutter/material.dart';
import 'package:quiz_upgrade/models/quiz_results.dart';
import 'package:quiz_upgrade/pages/landing_page.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.results});

  final QuizResults results;

  List<Widget> renderFinalResults() {
    List<Widget> renderedResults = [];
    renderedResults.add(SizedBox(height: 20));

    int counter = 1;

    results.responses.forEach((response) {
      Widget item = Column(
        children: [
          Text(
            "${counter}. ${response.question}",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("Correct Answer: ${response.correctAnswer}"),
          Text("Your Answer: ${response.userAnswer}"),
        ],
      );

      counter++;
      renderedResults.add(item);
    });

    renderedResults.add(SizedBox(height: 20));
    renderedResults.add(const Text("Final Score:",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)));
    renderedResults.add(Text("${results.score}/${results.responses.length}",
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)));
    return renderedResults;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Final Results:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ...renderFinalResults(),
          TextButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return LandingPage();
            }));
          }, child: Text('Exit Quiz')),
        ],
      ),
    );
  }
}
