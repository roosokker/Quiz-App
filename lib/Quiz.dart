import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    Key key,
    @required this.answers,
    @required this.question,
    @required int counter,
  })  : _counter = counter,
        super(key: key);

  final List<Map<String, Object>> question;
  final int _counter;
  final Function answers;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Questions(question: question, counter: _counter),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
        ),
        ...(question[_counter]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              answertxt: answer['Text'],
              nextquestion: () => answers(answer['Score']));
        }).toList(),
      ],
    );
  }
}
