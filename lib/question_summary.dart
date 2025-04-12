import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                final isCorrect = data['user_answer'] == data['correct_answer'];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: isCorrect ? Colors.green : Colors.red,
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Your answer: ${data['user_answer']}',
                            style: TextStyle(
                              color: isCorrect ? Colors.green : Colors.red,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text('Correct answer: ${data['correct_answer']}'),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
