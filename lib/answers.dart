import 'package:flutter/material.dart';
import 'constants.dart';

class Answers extends StatelessWidget {
  String answertxt;
  Function nextquestion;
  Answers({@required this.answertxt, this.nextquestion});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 250.0,
      onPressed: () {
        nextquestion();
      },
      child: Text(
        answertxt,
        style: kTextstyle(),
      ),
      shape: roundedButton(),
      color: Colors.blueGrey[600],
      elevation: 20.0,
    );
  }
}
