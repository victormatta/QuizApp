import 'package:flutter/material.dart';

main() {
  runApp(const QuizApp());
}

class QuestionAppState extends State<QuizApp> {
  var questionSelect = 0;

  void answer() {
    setState(() {
      questionSelect++;
    });
    print(questionSelect);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      "What's your hearth team?",
      "What pet do you have?",
      "What's your favorite color?"
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Hello, World!"),
          ),
          body: Column(
            children: [
              Text(questions[questionSelect]),
              ElevatedButton(
                onPressed: answer,
                child: const Text("Corinthians"),
              ),
              ElevatedButton(
                onPressed: answer,
                child: const Text("Athletico Paranaense"),
              ),
              ElevatedButton(
                onPressed: answer,
                child: const Text("Grêmio"),
              ),
              ElevatedButton(
                onPressed: answer,
                child: const Text("Red Bull Bragantino"),
              ),
            ],
          )),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  QuestionAppState createState() {
    return QuestionAppState();
  }
}
