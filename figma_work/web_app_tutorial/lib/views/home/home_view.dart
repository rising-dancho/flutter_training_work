import 'package:flutter/material.dart' hide NavigationBar;
import 'package:web_app_tutorial/widgets/call_to_action/call_to_action.dart';
import 'package:web_app_tutorial/widgets/centered_view/centered_view.dart';
import 'package:web_app_tutorial/widgets/course_details/course_details.dart';
import 'package:web_app_tutorial/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
                child: Row(
              children: [
                CourseDetails(),
                Expanded(
                    child: Center(
                  child: CallToAction(title: "Join Course"),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
