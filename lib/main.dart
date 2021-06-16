import 'package:flutter/material.dart';
import 'package:yasa1st/answer.dart';
import 'package:yasa1st/question.dart';
import 'package:yasa1st/quiz.dart';
import 'package:yasa1st/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "question": "aur kya chal raha hai",
      "answer": [
        {'Text': 'kuch nahi', 'Score': 5},
        {'Text': 'bohot kaam hai', 'Score': 5},
        {'Text': 'soo ke utha', 'Score': 5},
        {'Text': 'pata nahi', 'Score': 5},
      ],
    },
    {
      "question": "badiya question tha na",
      "answer": [
        {'Text': 'kuch nahi', 'Score': 5},
        {'Text': 'bohot kaam hai', 'Score': 5},
        {'Text': 'soo ke utha', 'Score': 5},
        {'Text': 'pata nahi', 'Score': 5},
      ],
    },
    {
      "question": "aur kya chal raha hai",
      "answer": [
        {'Text': 'kuch nahi', 'Score': 5},
        {'Text': 'bohot kaam hai', 'Score': 5},
        {'Text': 'soo ke utha', 'Score': 5},
        {'Text': 'pata nahi', 'Score': 5},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // if (_questionIndex < questions.length) {
    //   print("hogaya ab khatam");
    // } else {
    //   print("khatam");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: double.infinity,
          foregroundColor: Colors.amberAccent,
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
          title: Text('Test App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Results(_totalScore),
      ),
    );
  }
}
