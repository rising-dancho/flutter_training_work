import 'package:flutter/material.dart';

// THIS IS A DROP IN UI WIDGET
class StyledButton extends StatelessWidget {
  // named argument
  const StyledButton({super.key, required this.onPressed, required this.child});

  final Widget child;
  final void Function() onPressed;

  // named argument
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(5)),
        ),
      ),
      child: child,
    );
  }
}
