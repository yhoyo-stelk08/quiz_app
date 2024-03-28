import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  // make a constructor
  const StartScreen(this.startQuiz, {super.key});

  // point to quiz widget switchScree function
  final void Function()  startQuiz;

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
            color: const Color.fromARGB(163, 14, 173, 236),
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
          OutlinedButton.icon(
            // for onPressed property must return a void, so we make dummy void inside the class
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 127, 175, 157),
            ),
            // for label property is required params and return a widget, so we add the Text widget
            label: const Text(
              'Start Quiz', // required parameters in Text widget
              // do some style for the text
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            icon: const Icon(Icons.arrow_right),
          ),
        ],
      ),
    );
  }
}
