import 'package:flutter/material.dart ';
import 'package:quizapp/answer_button.dart';

import 'package:quizapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,

            style: TextStyle(color: Colors.white, fontSize: 25),
          ),

          SizedBox(height: 20),

          AnswerButton(
            answerText: currentQuestion.answers[0],
            onTap: () {
              print('Answer 1 tapped!');
            },
          ),
          AnswerButton(
            answerText: currentQuestion.answers[1],
            onTap: () {
              print('Answer 2 tapped!');
            },
          ),
          AnswerButton(
            answerText: currentQuestion.answers[2],
            onTap: () {
              print('Answer 3 tapped!');
            },
          ),
          AnswerButton(
            answerText: currentQuestion.answers[3],
            onTap: () {
              print('Answer 4 tapped!');
            },
          ),
        ],
      ),
    );
  }
}
