import 'package:flutter/material.dart';
import 'package:flutter_quiz/body.dart';
import 'package:flutter_quiz/congratulations.dart';

void main() {
  runApp(const QuizApp());
}

class _QuestionAppState extends State<QuizApp> {
  var _questionSelect = 0;

  final _questions = const [
    {
      "text": "What's your hearth team?",
      "answer": [
        "Corinthians",
        "Athletico Paranaense",
        "Grêmio",
        "Red Bull Bragantino"
      ],
    },
    {
      "text": "What pet do you have?",
      "answer": ["Frog", "Snake", "Slug", "Fox"],
    },
    {
      "text": "What's your favorite color?",
      "answer": ["Black", "Yellow", "Blue", "Red"],
    },
    {
      "text": "What's name your pet?",
      "answer": [
        "Jurandir & Boberto",
        "Gatona Branca",
        "Luis Fernando",
        "Manjericão",
        "Paçoca"
      ],
    }
  ];

  void _answer() {
    if (selectedQuestion) {
      setState(() {
        _questionSelect++;
      });
    }
  }

  bool get selectedQuestion {
    return _questionSelect < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("QuizMR"),
          ),
          body: selectedQuestion
              ? Body(
                  questionSelect: _questionSelect,
                  questions: _questions,
                  answer: _answer)
              : const Congratulations()),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}

    // List answers =
    //     selectedQuestion ? _questions[_questionSelect]["answer"] as List : [];
    // List answerWidgets = answers.map((text) => Answer(text, _answer)).toList();
    // List answers = [];
    // for (var answerText in _questions[_questionSelect]["answer"] as List) {
    //   answers.add(Answer(answerText, _answer));
    // }