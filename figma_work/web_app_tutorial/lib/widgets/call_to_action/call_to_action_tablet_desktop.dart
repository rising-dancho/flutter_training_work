import 'package:flutter/material.dart';
import 'package:web_app_tutorial/constants/app_colors.dart';

class CallToActionTabletDesktop extends StatefulWidget {
  final String title;
  final VoidCallback? onTap;
  const CallToActionTabletDesktop(
      {super.key, required this.title, required this.onTap});

  @override
  State<CallToActionTabletDesktop> createState() =>
      _CallToActionTabletDesktopState();
}

class _CallToActionTabletDesktopState extends State<CallToActionTabletDesktop> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click, // ensures hand cursor on entire area
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(5),
        splashColor: Colors.white.withOpacity(0.2),
        hoverColor: Colors.transparent, // no hover color
        child: Container(
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(5)),
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          child: Text(widget.title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
