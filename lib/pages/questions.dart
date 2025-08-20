import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = myQuizBrain.getQuestionAnswer();

    setState(() {
      if (myQuizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: "RFLUTTER",
          desc: "You have completed the quiz!.",
        ).show();
        myQuizBrain.reset();
        scorekeeper = [];
      } else {
        if (correctAnswer == userPickedAnswer) {
          scorekeeper.add(Icon(Icons.check, color: Colors.green));
        } else {
          scorekeeper.add(Icon(Icons.close, color: Colors.red));
        }
        myQuizBrain.nextQuestion();
      }
    });
  }

  QuizBrain myQuizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900], // optional background color
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    myQuizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  child: Text(
                    'True',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  onPressed: () {
                    checkAnswer(true);
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(
                    'False',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () {
                    checkAnswer(false);
                  },
                ),
              ),
            ),
            Row(children: scorekeeper),
          ],
        ),
      ),
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
