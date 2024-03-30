import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: summaryData.map((data) {
      return Row(
        children: [
          // Text Question Number
          Text(
            ((data['question_index'] as int) + 1).toString(),
          ),
          // Text Question
          Column(
            children: [
              // Text Question
              Text(data['question'] as String),
              const SizedBox(height: 5,),
              // Text Correct Answer
              Text(data['correct_answer'] as String),
              const SizedBox(height: 5,),
              // Text User Answer
              Text(data['user_answer'] as String),
              const SizedBox(height: 5,),
            ],
          ),
        ],
      );
    }).toList());
  }
}
