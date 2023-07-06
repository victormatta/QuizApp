import 'package:flutter/material.dart';

class Congratulations extends StatelessWidget {
  const Congratulations(this.score, this.restartQuiz, {super.key});

  final int score;
  final Function() restartQuiz;

  String get resultPhrase {
    if (score >= 40) {
      return "🎉Corinthians🎉 Score: $score";
    } else if (score >= 28 && score < 40) {
      return "🎉Athletico Paranaense🎉 Score: $score";
    } else if (score >= 20 && score < 28) {
      return "🎉Grêmio🎉 Score: $score";
    } else {
      return "🎉Red Bull Bragantino🎉 Score: $score";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Center(
            child: Text(
              resultPhrase,
              style: const TextStyle(fontSize: 23),
            ),
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, foregroundColor: Colors.white),
            onPressed: restartQuiz,
            child: const Text(
              "Restart Quiz!",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
