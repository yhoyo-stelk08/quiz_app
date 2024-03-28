import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

// dummy function
void onTap(){}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Text widget for the question
          Text(
            'Question:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(174, 221, 208, 136),
            ),
          ),
          // SizedBox
          SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 1', onTap: onTap),
          SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 2', onTap: onTap),
          SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 3', onTap: onTap),
          SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 4', onTap: onTap),
        ],
      ),
    );
  }
}
