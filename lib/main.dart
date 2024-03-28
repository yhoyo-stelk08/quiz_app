import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        [
          Color.fromARGB(255, 8, 235, 166),
          Color.fromARGB(255, 14, 59, 184),
          Color.fromARGB(255, 224, 9, 178),
        ],
      ),
    ),
  ));
}
