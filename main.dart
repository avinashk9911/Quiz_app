import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    // or:  static final questions= [
    {
      'questionText': "What is your favorite color? ",
      "answers": [
        {'text': 'Black', 'Score': 10},
        {'text': 'Red', 'Score': 20},
        {'text': 'Green', 'Score': 30},
        {'text': 'Yellow', 'Score': 40},
      ]
    },
    {
      "questionText": "What is your favorite animal? ",
      "answers": [
        {'text': 'Rabbit', 'Score': 1},
        {'text': 'Elephant', 'Score': 2},
        {'text': 'Lion', 'Score': 3},
        {'text': 'Hourse', 'Score': 4},
      ]
    },
    {
      "questionText": "What is your favorite instructor",
      "answers": [
        {'text': "Max", 'Score': 10},
        {'text': "Rax", 'Score': 20},
        {'text': "Tax", 'Score': 30},
        {'text': 'Pax', 'Score': 40},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int Score) {
    if (_questionIndex < _questions.length) {}

    _totalScore += Score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("option chossen! ");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My first App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
