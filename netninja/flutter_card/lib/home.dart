import 'package:flutter/material.dart';
import 'package:flutter_card/coffeePrefs.dart';
import 'package:flutter_card/styled_body_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: 200,
      height: 200,
      // padding: const EdgeInsets.all(20),
      // margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Coffee Id",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[200],
              padding: EdgeInsets.all(20),
              child: StyledBodyText("How I like my coffee..."),
            ),
            Container(
              color: Colors.brown[100],
              padding: EdgeInsets.all(20),
              child: CoffeePrefs(),
            ),
            Expanded(
              child: Image.asset(
                "assets/img/coffee_bg.jpg",
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
