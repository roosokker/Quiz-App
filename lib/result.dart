import 'package:flutter/material.dart';
import 'constants.dart';

class Result extends StatelessWidget {
  final int totalscore;
  Result({@required this.totalscore});

  String get resultstate {
    String message;
    if (totalscore > 200) {
      message = "You're a Dangerous, Sneaky person";
    } else if (totalscore < 200) {
      message = "You're SLightly Dangerous.. ! ";
    } else if (totalscore < 150) {
      message = "You're so Inocent ...";
    }
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        resultstate,
        style: kTextstyle(),
      ),
    );
  }
}
