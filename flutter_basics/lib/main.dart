import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Yellow', 'score': 30},
        {'text': 'Blue', 'score': 40},
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Rat', 'score': 30},
        {'text': 'Bat', 'score': 40},
      ],
    },
    {
      'questionText': 'Who is your favorite instructor ?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Jan', 'score': 20},
        {'text': 'Czarek', 'score': 30},
        {'text': 'Bartosz', 'score': 40},
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

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
    print("Answer chosen");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("My First App")),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
