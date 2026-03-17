import 'package:flutter/material.dart';
import 'package:flutter_card/home.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SandBox"), backgroundColor: Colors.grey),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(height: 100, color: Colors.red, child: const Text("ones")),
          Container(height: 100, color: Colors.blue, child: const Text("two")),
          Container(
            height: 100,
            color: Colors.green,
            child: const Text("three"),
          ),
        ],
      ),
    );
  }
}
