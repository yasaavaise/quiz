import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "badiya hai";
    } else if (resultScore <= 12) {
      resultText = "sahi hai yaar";
    } else if (resultScore <= 16) {
      resultText = "ek no yaar";
    } else {
      resultText = "zhakkas";
    }
    return resultText;
  }

  Results(this.resultScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
