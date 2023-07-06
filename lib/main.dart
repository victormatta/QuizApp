import 'package:flutter/material.dart';
import 'package:flutter_quiz/body.dart';
import 'package:flutter_quiz/congratulations.dart';

void main() {
  runApp(const QuizApp());
}

class _QuestionAppState extends State<QuizApp> {
  var _questionSelect = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "text": "What's your hearth team?",
      "answer": [
        {"text": "Corinthians", "score": 10},
        {"text": "Athletico Paranaense", "score": 7},
        {"text": "Grêmio", "score": 5},
        {"text": "Red Bull Bragantino", "score": 1}
      ],
    },
    {
      "text": "When your hearth team borned?",
      "answer": [
        {"text": "1924", "score": 7},
        {"text": "1903", "score": 5},
        {"text": "1928", "score": 1},
        {"text": "1910", "score": 10},
      ],
    },
    {
      "text": "Who is your hearth team player?",
      "answer": [
        {"text": "Vitor Roque", "score": 7},
        {"text": "Cleiton", "score": 1},
        {"text": "Cássio", "score": 10},
        {"text": "Luis Suárez", "score": 5},
      ],
    },
    {
      "text": "What's your hearth team uniform color?",
      "answer": [
        {"text": "Black and White", "score": 10},
        {"text": "White and Red", "score": 1},
        {"text": "Blue and Black", "score": 5},
        {"text": "Red and Black", "score": 7}
      ],
    }
  ];

  void _answer(int score) {
    if (selectedQuestion) {
      setState(() {
        _questionSelect++;
        _totalScore += score;
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      _questionSelect = 0;
      _totalScore = 0;
    });
  }

  bool get selectedQuestion {
    return _questionSelect < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("QuizMR"),
          ),
          body: selectedQuestion
              ? Body(
                  questionSelect: _questionSelect,
                  questions: _questions,
                  answer: _answer,
                )
              : Congratulations(_totalScore, _restartQuiz)),
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