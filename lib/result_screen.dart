import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.resetQuiz,
  });
  final List<String> chosenAnswers;
  final VoidCallback resetQuiz;

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
    final summaryData = getSummaryData();
    final numCorrectAnswers =
        summaryData.where((data) {
          return data['correct_answer'] == data['user_answer'];
        }).length;
    final totalQuestions = questions.length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $totalQuestions questions correctly',
              style: const TextStyle(
                fontSize: 20, // Increased font size
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: () {
                resetQuiz();
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
