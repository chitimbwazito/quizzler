import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Quizzler")),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text("Go To Questions"),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => QuizPage()),
              // );
              Navigator.pushNamed(context, '/questions');
            },
          ),
        ),
      ),
    );
  }
}
