import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
  }

  void _switchTab(int index) {
    // Switch instantly with no animation
    _controller.animateTo(index, duration: Duration.zero);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _controller,
          onTap: _switchTab,
          tabs: [
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.dashboard),
                  SizedBox(width: 8),
                  Text("Dashboard"),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.feed),
                  SizedBox(width: 8),
                  Text("Bulletin"),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.event),
                  SizedBox(width: 8),
                  Text("Events"),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.shop),
                  SizedBox(width: 8),
                  Text("Marketplace"),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.work),
                  SizedBox(width: 8),
                  Text("Jobs"),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Center(child: Text('Dashboard Screen')),
              Center(child: Text('Bulletin Screen')),
              Center(child: Text('Events Screen')),
              Center(child: Text('Marketplace Screen')),
              Center(child: Text('Jobs Screen')),
            ],
          ),
        ),
      ],
    );
  }
}
