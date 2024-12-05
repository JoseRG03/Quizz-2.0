import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/quiz.dart';

class QuizService {

  Future<String> _loadAssets(String path) async {
    return rootBundle.loadString(path);
  }

  // Quiz getQuizQuestions() {
  //   await Future.delayed(const Duration(milliseconds: 1000));
  //
  //   final data = _loadAssets('assets/sample_data/questions_data.json');
  //
  //   final Map<String, dynamic> json = jsonDecode(data);
  //
  //   if (json['response_code'] == 0) {
  //     return Quiz.fromJson(json);
  //   }
  //
  //   return Quiz(question_list: [
  //     Question(question: "How long are all the cutscenes from Metal Gear Solid 4 (PS3, 2008) combined?", correct_answer: "8 hours", incorrect_answers: ["4 hours","12 hours","5 hours"]),
  //     Question(question: "According to Overwatch's lore, who was once a member of the Deadlock Gang?", correct_answer: "McCree", incorrect_answers: ["Roadhog","Soldier 76","Junkrat"]),
  //     Question(question: "What was the name of the Secret Organization in the Hotline Miami series?", correct_answer: "50 Blessings", incorrect_answers: ["American Blessings","50 Saints","USSR's Blessings"]),
  //     Question(question: "How many voice channels does the Nintendo Entertainment System support natively?", correct_answer: "5", incorrect_answers: ["4","6","3"]),
  //   ]);
  // }
}