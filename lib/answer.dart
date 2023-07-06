import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.text, this.onSelect, {super.key});

  final String text;
  final void Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 52,
      margin: EdgeInsets.all(15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black,
        ),
        onPressed: onSelect,
        child: Text(
          text,
          style: const TextStyle(fontSize: 17),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
