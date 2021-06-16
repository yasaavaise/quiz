import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function huanswer;
  final String answertext;
  Answer(this.huanswer, this.answertext);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.cyanAccent,
        onPressed: huanswer,
        child: Text(answertext),
      ),
    );
  }
}
