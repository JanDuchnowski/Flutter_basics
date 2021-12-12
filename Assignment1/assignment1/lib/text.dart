import 'package:flutter/material.dart';

class ActualText extends StatelessWidget {
  final String textToOutput;

  ActualText(this.textToOutput);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textToOutput,
        textAlign: TextAlign.center,
      ),
    );
  }
}
