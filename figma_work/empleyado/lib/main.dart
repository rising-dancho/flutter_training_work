  import 'package:empleyado/sidebar.dart';
  import 'package:empleyado/tabs.dart';
  import 'package:empleyado/top_navbar.dart';
  import 'package:flutter/material.dart';

  void main() {
    runApp(const MyWebApp());
  }

  class MyWebApp extends StatelessWidget {
    const MyWebApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: "Flutter Web Template",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      );
    }
  }

  class HomePage extends StatelessWidget {
    const HomePage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Row(
          children: [
            Sidebar(),
            Expanded(
              child: Column(
                children: [
                  TopNavbar(),
                  Expanded(
                    child: Container(color: Colors.white, child: Tabs()),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
