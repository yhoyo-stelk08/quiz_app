import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';
import 'package:quiz_app/restart_quiz.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswer, });

  final List<String> choosenAnswer;
  
  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].question,
          'correct_answer': questions[i].answers[0],
          'user_answer': choosenAnswer[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final int numTotalQuestions = questions.length;
    final int numCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text
            Text(
              'You Answer $numCorrectAnswers out of $numTotalQuestions questions correctly !!',
              textAlign: TextAlign.center,
              style: GoogleFonts.glegoo(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(153, 172, 206, 174),
                ),
              ),
            ),
            // Padding SizedBox
            const SizedBox(
              height: 30,
            ),
            // Scrolling panel
            // Text
            QuestionSummary(summaryData: summaryData),
            const SizedBox(
              height: 30,
            ),
            // button for restart quiz
            const RestartQuiz(),
          ],
        ),
      ),
    );
  }
}
