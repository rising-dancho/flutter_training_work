import 'package:flutter/material.dart' hide NavigationBar, NavigationDrawer;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_tutorial/views/home/home_content_desktop.dart';
import 'package:web_app_tutorial/views/home/home_contnet_mobile.dart';
import 'package:web_app_tutorial/widgets/centered_view/centered_view.dart';
import 'package:web_app_tutorial/widgets/navigation_bar/navigation_bar.dart';
import 'package:web_app_tutorial/widgets/navigation_drawer/navigation_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                  child: ScreenTypeLayout.builder(
                mobile: (_) => HomeContnetMobile(),
                desktop: (_) => HomeContentDesktop(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
