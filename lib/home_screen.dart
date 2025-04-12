import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:quizapp/questions_screen.dart';
// import 'package:quizapp/quiz.dart';

class HomeScrn extends StatelessWidget {
  const HomeScrn(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Center(
      child:
          isLandscape
              ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/quiz-logo.png',
                      width: 200,
                      height: 350,
                      color: const Color.fromARGB(175, 255, 255, 255),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Test your knowledge here!',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        OutlinedButton.icon(
                          onPressed: startQuiz,
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                          ),
                          icon: const Icon(Icons.arrow_right_alt),
                          label: const Text('Start Quiz'),
                        ),
                      ],
                    ),
                  ),
                ],
              )
              : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/quiz-logo.png',
                    width: 300,
                    color: const Color.fromARGB(175, 255, 255, 255),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Test your knowledge here!',
                    style: GoogleFonts.lato(fontSize: 30, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton.icon(
                    onPressed: startQuiz,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    icon: const Icon(Icons.arrow_right_alt),
                    label: const Text('Start Quiz'),
                  ),
                ],
              ),
    );
  }
}
