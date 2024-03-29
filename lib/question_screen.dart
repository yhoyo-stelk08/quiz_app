import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

// dummy function
// void onTap() {}

class _QuestionScreenState extends State<QuestionScreen> {
  var curQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      curQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[curQuestionIndex];
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
                return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
