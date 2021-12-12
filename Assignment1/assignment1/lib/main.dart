import 'package:flutter/material.dart';

import 'package:assignment1/textcontrol.dart';
import 'package:assignment1/text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _textToOutput = "My initial text";

  void _setText() {
    setState(() {
      _textToOutput = "My changed text";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Assignment 1"),
        ),
        body: Column(
          children: [
            ActualText(_textToOutput),
            TextControl(_setText),
          ],
        ),
      ),
    );
  }
}
