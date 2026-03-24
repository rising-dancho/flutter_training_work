import 'package:flutter/material.dart';
import 'package:web_app_tutorial/widgets/call_to_action/call_to_action.dart';
import 'package:web_app_tutorial/widgets/course_details/course_details.dart';

class HomeContnetMobile extends StatelessWidget {
  const HomeContnetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
        Expanded(
          child: SizedBox(
            height: 50,
          ),
        ),
        CallToAction(
          title: "Join Course",
          onTap: () {},
        )
      ],
    );
  }
}
