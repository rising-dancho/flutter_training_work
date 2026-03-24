import 'package:flutter/material.dart';
import 'package:web_app_tutorial/constants/app_colors.dart';

class CallToActionMobile extends StatefulWidget {
  final String title;
  final VoidCallback? onTap;

  const CallToActionMobile({super.key, required this.title, this.onTap});

  @override
  State<CallToActionMobile> createState() => _CallToActionMobileState();
}

class _CallToActionMobileState extends State<CallToActionMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(5)),
      height: 60,
      alignment: Alignment.center,
      child: Text(widget.title,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white)),
    );
  }
}


// MouseRegion(
//       cursor: SystemMouseCursors.click, // ensures hand cursor on entire area
//       child: InkWell(
//         onTap: widget.onTap,
//         borderRadius: BorderRadius.circular(5),
//         splashColor: Colors.white.withOpacity(0.2),
//         hoverColor: Colors.transparent, // no hover color
//         child: Container(
//           decoration: BoxDecoration(
//               color: Color.fromARGB(255, 31, 229, 146),
//               borderRadius: BorderRadius.circular(5)),
//           padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
//           child: Text(widget.title,
//               style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w800,
//                   color: Colors.white)),
//         ),
//       ),
//     );