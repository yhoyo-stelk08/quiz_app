import 'package:flutter/material.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class StartScreen extends StatelessWidget {
  // make a constructor
  const StartScreen(this.listColor, {super.key});
  // make list color to be passed into decoration.gradient.colors
  final List<Color> listColor;

  // dummy void for now
  void startQuiz(){}

  // override build function
  @override
  Widget build(BuildContext context) {
    // return a Container widget
    return Container(
      // decorate the Container widget with BoxDecoration Widget
      decoration: BoxDecoration(
        // make gradient with LinearGradient
        gradient: LinearGradient(
          colors: listColor, // value passed from main dart
          begin: beginAlignment, // value from local global variable
          end: endAlignment, // value from local global variable
        ),
      ),
      // add Center widget to make the content align to center vertically because we will be using Column widget
      // horizontally if we using rRw widget
      child: Center(
        child: Column(
          // setting mainAxisSize to be fit content, default 100% in height(Column widget), 100% in width (Row widget)
          mainAxisSize: MainAxisSize.min,
          // add childrent into container widget
          children: [
            // Image widget
            Image.asset('assets/images/quiz-logo.png'),
            // SizedBox widget
            const SizedBox(
              height: 20,
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
            // TextButton widget
            TextButton(
              // for onPressed property must return a void, so we make dummy void inside the class
              onPressed: startQuiz, 
              // for child property must return a widget, so we add the Text widget
              child: const Text('Start Quiz')
            ),
          ],
        ),
      ),
    );
  }
}
