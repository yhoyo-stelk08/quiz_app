import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

// dummy function
// void onTap() {}

class _QuestionScreenState extends State<QuestionScreen> {
  var curAnswerIndex = 0;

  void answerQuestion() {
    setState(() {
      curAnswerIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[curAnswerIndex];
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
              style: GoogleFonts.glegoo(
                  textStyle: const TextStyle(
                fontSize: 23,
                color: Color.fromARGB(173, 254, 254, 254),
              )),
            ),
            // SizedBox
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswer().map(
              (answer) {
                return AnswerButton(answerText: answer, onTap: answerQuestion);
              },
            ),
          ],
        ),
      ),
    );
  }
}
