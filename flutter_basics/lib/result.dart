import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetResult;

  Result(this.resultScore, this.resetResult);

  String get resultPhrase {
    var resultText = "You scored ";
    var resultScoreToText = resultScore.toString();
    return resultText + resultScoreToText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
              style: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.bold,
              )),
          ElevatedButton(onPressed: resetResult, child: Text("Restart Quiz!"))
        ],
      ),
    );
  }
}
