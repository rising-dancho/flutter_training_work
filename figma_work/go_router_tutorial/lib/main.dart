import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/dashboard.dart';
import 'package:go_router_tutorial/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'Go router Demo', routerConfig: _router);
  }

  final GoRouter _router = GoRouter(
    initialLocation: "/profile",
    routes: [
      GoRoute(path: "/", builder: (context, state) => const Dashboard()),
      GoRoute(path: "/profile", builder: (context, state) => const Profile()),
    ],
  );
}
