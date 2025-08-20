import 'package:flutter/material.dart';
import 'package:quizzler/pages/homepage.dart';
import 'package:quizzler/pages/intro_page.dart';
import 'package:quizzler/pages/questions.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(child: IntroPage()),
      ),
      routes: {
        '/questions': (context) => const QuizPage(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
