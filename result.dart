import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHanler;

  Result(this.resultScore, this.resetHanler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 10) {
      resultText = "you are grate!";
    } else if (resultScore <= 20) {
      resultText = "you are ... good";
    } else if (resultScore <= 30) {
      resultText = "You can improve!";
    } else {
      resultText = "You shoud improve!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
        onPressed: resetHanler,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black, // Background color
        ),
        child: Text("Rest Quiz"),
      )
    ]));
  }
}
