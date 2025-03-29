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
          Text(
            'Test your knowledge here!',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              // style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
