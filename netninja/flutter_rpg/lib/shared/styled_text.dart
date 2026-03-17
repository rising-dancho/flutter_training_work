import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  // positional argument
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.kanit(
        textStyle: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

class StyledHeading extends StatelessWidget {
  // positional argument
  const StyledHeading(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: GoogleFonts.kanit(
        textStyle: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}

class StyledTitle extends StatelessWidget {
  // positional argument
  const StyledTitle(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: GoogleFonts.kanit(
        textStyle: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
