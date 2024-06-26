import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/data/questions.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = "startScreen";
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionScreen();
      activeScreen = 'questionScreen';
    });
  }

  void onRestart() {
    if (selectedAnswers.length == questions.length) {
      setState(
        () {
          selectedAnswers = [];
          activeScreen = "startScreen";
        },
      );
    }
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'resultScreen';
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // decorate the Container widget with BoxDecoration Widget
          decoration: const BoxDecoration(
            // make gradient with LinearGradient
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 8, 235, 166),
                Color.fromARGB(255, 14, 59, 184),
                Color.fromARGB(255, 224, 9, 178),
              ], // value passed from main dart
              begin: beginAlignment, // value from local global variable
              end: endAlignment, // value from local global variable
            ),
          ),
          // child: activeScreen,
          child: activeScreen == "startScreen"
              ? StartScreen(switchScreen)
              : activeScreen == "questionScreen"
                  ? QuestionScreen(
                      onSelectAnswer: chooseAnswer,
                    )
                  : ResultScreen(
                      choosenAnswer: selectedAnswers,
                      onRestart: onRestart,
                    ),
        ),
      ),
    );
  }
}
