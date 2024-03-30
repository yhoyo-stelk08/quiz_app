import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestartQuiz extends StatelessWidget {
  const RestartQuiz({super.key, required this.onRestart});
  final void Function() onRestart;

  // final bool isRestart;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onRestart,
      icon: const Icon(Icons.restart_alt),
      label: Text(
        'Restart Quiz!',
        style: GoogleFonts.glegoo(
          textStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
