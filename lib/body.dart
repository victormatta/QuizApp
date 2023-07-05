import 'package:flutter/material.dart';
import 'package:flutter_quiz/question.dart';
import 'package:flutter_quiz/answer.dart';

class Body extends StatelessWidget {
  const Body(
      {required this.questionSelect,
      required this.questions,
      required this.answer,
      super.key});

  final int questionSelect;
  final List<Map<String, Object>> questions;
  final void Function() answer;

  bool get selectedQuestion {
    return questionSelect < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List answers =
        selectedQuestion ? questions[questionSelect]["answer"] as List : [];
    return Column(
      children: [
        Question(questions[questionSelect]["text"].toString()),
        ...answers.map((text) => Answer(text, answer)).toList(),
      ],
    );
  }
}
