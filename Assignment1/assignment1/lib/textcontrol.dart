import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback setTheText;

  TextControl(this.setTheText);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: setTheText, child: Text("Change text"));
  }
}
