import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_tutorial/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:web_app_tutorial/widgets/call_to_action/call_to_action_tablet_desktop.dart';

class CallToAction extends StatefulWidget {
  final String title;
  final VoidCallback? onTap;

  const CallToAction({super.key, required this.title, this.onTap});

  @override
  State<CallToAction> createState() => _CallToActionState();
}

class _CallToActionState extends State<CallToAction> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => CallToActionMobile(
        title: "Join course",
        onTap: () {},
      ),
      desktop: (_) =>
          CallToActionTabletDesktop(title: "Join course", onTap: () {}),
      tablet: (_) =>
          CallToActionTabletDesktop(title: "Join course", onTap: () {}),
    );
  }
}
