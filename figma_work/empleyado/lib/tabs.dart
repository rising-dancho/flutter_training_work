import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  void _switchTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildPage() {
    switch (_currentIndex) {
      case 0:
        return const Center(child: Text('Dashboard Screen'));
      case 1:
        return const Center(child: Text('Bulletin Screen'));
      case 2:
        return const Center(child: Text('Events Screen'));
      case 3:
        return const Center(child: Text('Marketplace Screen'));
      case 4:
        return const Center(child: Text('Jobs Screen'));
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: _currentIndex, // sync initial state
      child: Column(
        children: [
          TabBar(
            onTap: _switchTab,
            tabs: const [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.dashboard), Text("Dashboard")],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.feed), Text("Bulletin")],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.event), Text("Events")],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.shop), Text("Marketplace")],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.work), Text("Jobs")],
                ),
              ),
            ],
          ),
          Expanded(child: _buildPage()),
        ],
      ),
    );
  }
}
