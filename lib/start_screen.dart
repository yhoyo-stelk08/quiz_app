import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  // make a constructor
  const StartScreen({super.key});

  // dummy void for now
  void startQuiz() {}

  // override build function
  @override
  Widget build(BuildContext context) {
    // return a Container widget
    return Center(
      child: Column(
        // setting mainAxisSize to be fit content, default 100% in height(Column widget), 100% in width (Row widget)
        mainAxisSize: MainAxisSize.min,
        // add childrent into container widget
        children: [
          // Image widget
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          // SizedBox widget
          const SizedBox(
            height: 70,
          ),
          // Text widget
          const Text(
            'Learn flutter the fun way', // required parameters to add in Text widget
            // do some style for the text
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 197, 206, 73),
            ),
            textAlign: TextAlign.center,
          ),
          // SizedBox widget
          const SizedBox(
            height: 30,
          ),
          // OutlinedButton widget
          OutlinedButton(
            // for onPressed property must return a void, so we make dummy void inside the class
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 117, 57, 29),
            ),
            // for child property must return a widget, so we add the Text widget
            child: const Text(
              'Start Quiz', // required parameters in Text widget
              // do some style for the text
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
