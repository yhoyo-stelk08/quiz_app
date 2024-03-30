import 'package:flutter/material.dart';
import 'package:quiz_app/question_number.dart';
import 'package:quiz_app/question_text.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text Question Number
                  QuestionNumber(
                    data['question_index'] as int,
                    data['correct_answer'] == data['user_answer']
                        ? true
                        : false,
                  ),
                  // Text Question
                  Expanded(
                    child: Column(
                      children: [
                        // Text Question
                        // Text(data['question'] as String),
                        QuestionText(
                          data['question'] as String,
                          data['correct_answer'] as String,
                          data['user_answer'] as String,
                          data['correct_answer'] == data['user_answer']
                              ? true
                              : false,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
