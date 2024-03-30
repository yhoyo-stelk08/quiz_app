import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  const QuestionText(
      this.question, this.correctAnswer, this.userAnswer, this.isCorrectAnswer,
      {super.key});
  final String question;
  final String correctAnswer;
  final String userAnswer;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // question text
          Text(
            question,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color.fromARGB(255, 214, 182, 0),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          // Correct answer text
          Text(
            correctAnswer,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Color.fromARGB(255, 246, 244, 252),
              fontSize: 13,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          // User answer text
          Text(
            userAnswer,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: isCorrectAnswer
                  ? const Color.fromARGB(255, 98, 231, 9)
                  : const Color.fromARGB(255, 238, 16, 0),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
