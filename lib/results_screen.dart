import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text
            const Text('You Answer X out of Y questions correctly !!'),
            // Padding SizedBox
            const SizedBox(height: 30,),
            // Scrolling panel
            // Text with icon widget inside scrolling panel
            const Text('List of answer and questions..'),
            const SizedBox(height: 30,),
            // button for restart quiz
            TextButton(onPressed: () {}, child: const Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
