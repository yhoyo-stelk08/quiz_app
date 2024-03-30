import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber(this.questionIndex, this.isCorrectAnswer, {super.key});
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    int questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 89, 201, 201)
            : const Color.fromARGB(255, 197, 41, 41),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
