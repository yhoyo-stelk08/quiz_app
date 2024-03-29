import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

// dummy function
void onTap() {}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Text widget for the question
            Text(
              currentQuestion.question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                color: Color.fromARGB(173, 254, 254, 254),
              ),
            ),
            // SizedBox
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.answers.map(
              (answer) {
                return AnswerButton(answerText: answer, onTap: onTap);
              },
            ),
          ],
        ),
      ),
    );
  }
}
