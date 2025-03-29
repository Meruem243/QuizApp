import 'package:flutter/material.dart';

class HomeScrn extends StatelessWidget {
  const HomeScrn({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),

          const SizedBox(height: 20),
          Text('Quiz App', style: TextStyle(fontSize: 30, color: Colors.white)),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),

            child: const Text(
              'Start Quiz',
              // style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
