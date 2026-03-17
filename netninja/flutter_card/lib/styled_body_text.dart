import 'package:flutter/material.dart';


// THIS IS A DROP IN UI WIDGET
class StyledBodyText extends StatelessWidget {
  // positional argument
  const StyledBodyText(this.text, {super.key});

  // positional argument
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.brown[900],
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
