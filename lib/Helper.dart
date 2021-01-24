import 'package:flutter/material.dart';
import 'result.dart';
import 'Quiz.dart';

class Helper extends StatefulWidget {
  static const String id = "/";
  @override
  _HelperState createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  int _counter = 0;
  int totalscore = 0;
  void answerState(int score) {
    setState(() {
      _counter++;
      totalscore += score;
    });
  }

  var question = [
    {
      'questionText': "What is your favorite color ? ",
      'answers': [
        {'Text': 'Red', 'Score': 50},
        {'Text': 'Green', 'Score': 20},
        {'Text': 'Black', 'Score': 80},
        {'Text': 'Yellow', 'Score': 60}
      ],
    },
    {
      'questionText': "Which animal do you prefer ? ",
      'answers': [
        {'Text': 'Lion', 'Score': 50},
        {'Text': 'Cat', 'Score': 40},
        {'Text': 'Snake', 'Score': 100},
        {'Text': 'Panda', 'Score': 80}
      ],
    },
    {
      'questionText': "What country do you prefer  ? ",
      'answers': [
        {'Text': 'Italy', 'Score': 40},
        {'Text': 'Spain', 'Score': 20},
        {'Text': 'France', 'Score': 60},
        {'Text': 'Holland', 'Score': 80}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: _counter < question.length
          ? SafeArea(
              child: Center(
                child: Quiz(
                    question: question,
                    counter: _counter,
                    answers: answerState),
              ),
            )
          : SafeArea(
              child: Center(
                  child: Result(
              totalscore: totalscore,
            ))),
    );
  }
}
