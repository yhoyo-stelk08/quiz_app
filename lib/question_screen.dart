import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return const Center(
      child: Column(
        children: [
          // Text widget for the question
          Text(
            'Question:',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(174, 221, 208, 136),

            ),
          ),
          // Button widget for the answer
          // Button for next question
        ],
      ),
    );
  }
}
