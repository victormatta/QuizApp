import 'package:flutter/material.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "🎉Congratulations🎉",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
