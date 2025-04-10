import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],

        // 'is_correct': questions[i].answers[0] == chosenAnswers[i],
      });
    }

    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions corretly'),
            const SizedBox(height: 30),
            Text('List of answers and questions'),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz')),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
