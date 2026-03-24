import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_tutorial/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:web_app_tutorial/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    // this ScreenTypeLayout allows you to pass in a widget for a specific screentype: mobile, tablet, mobile, desktop
    return ScreenTypeLayout.builder(
      mobile: (_) => NavigationBarMobile(), // function returning the widget
      tablet: (_) => NavigationBarTabletDesktop(),
      desktop: (_) => NavigationBarTabletDesktop(), // optional: same as tablet
    );
  }
}
