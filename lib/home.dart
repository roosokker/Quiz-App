import 'package:flutter/material.dart';
import 'constants.dart';
import 'Helper.dart';

class HomePage extends StatelessWidget {
  static const String id = "homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        centerTitle: true,
        title: Text("QuiZzz"),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome To Quiz App",
              style: kTextstyle(),
            ),
            Text(
              "Discover Your Personality...",
              style: kTextstyle(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Helper.id);
                },
                elevation: 20.0,
                color: Colors.blueGrey[600],
                textColor: Colors.white,
                child: Text(
                  "Start Quiz",
                ),
                hoverElevation: 20.0,
                disabledElevation: 20.0,
                shape: roundedButton(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
