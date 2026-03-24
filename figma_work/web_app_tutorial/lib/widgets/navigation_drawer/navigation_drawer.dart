import 'package:flutter/material.dart';
import 'package:web_app_tutorial/widgets/navigation_drawer/drawer_item.dart';
import 'package:web_app_tutorial/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
        ),
        child: Column(
          children: [
            NavigationDrawerHeader(),
            DrawerItem(title: "Episodes", icon: Icons.videocam),
            DrawerItem(title: "About", icon: Icons.help)
          ],
        ),
      ),
    );
  }
}
