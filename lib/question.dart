import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;

  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      padding: EdgeInsets.all(5),
      child: Text(
        questiontext,
        style: TextStyle(
          fontSize: 28,
          backgroundColor: Colors.blueGrey,
          letterSpacing: 10,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
