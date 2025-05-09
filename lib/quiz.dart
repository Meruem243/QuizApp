import 'package:flutter/material.dart ';

import 'package:quizapp/home_screen.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = HomeScrn(switchScreen);
  // }

  List<String> selectedAnswers = [];

  void selectAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result_screen';
      });
    }
  }

  void resetQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = 'home_screen';
    });
  }

  var activeScreen = 'home_screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomeScrn(switchScreen);

    if (activeScreen == 'questions_screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: selectAnswer);
    }

    if (activeScreen == 'result_screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
        resetQuiz: resetQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child: screenWidget,
        ),
      ),
    );
  }
}
