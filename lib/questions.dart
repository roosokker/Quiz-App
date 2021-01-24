import 'package:flutter/material.dart';
import 'constants.dart';

class Questions extends StatelessWidget {
  const Questions({
    Key key,
    @required this.question,
    @required int counter,
  })  : _counter = counter,
        super(key: key);

  final List<Map<String, Object>> question;
  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      question[_counter]['questionText'],
      style: kTextstyle(),
    );
  }
}
