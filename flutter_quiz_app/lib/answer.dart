import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer({this.onPressed, this.answerText});

  final VoidCallback onPressed;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          onPrimary: Colors.white,
        ),
        child: Text(answerText),
        onPressed: onPressed,
      ),
    );
  }
}
