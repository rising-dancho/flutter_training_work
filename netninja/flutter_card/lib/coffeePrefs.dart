import 'package:flutter/material.dart';
import 'package:flutter_card/styled_body_text.dart';
import 'package:flutter_card/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    // doing this wont do anything because there is a need to rebuild Widget.. for the screen to update we need setState() similar to react
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
      // strength += 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  // when a loop is used inside children [] it becomes a collection for.. which creates a widget for each iteration of the loop

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText("Strength: "),
            // Text("$strength"),
            for (int i = 0; i < strength; i++)
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox(width: 50)),
            StyledButton(onPressed: increaseStrength, child: Text("+")),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            StyledBodyText("Sugars: "),

            // Text("$sugars"),
            if (sugars == 0) Text("No sugars..."),

            for (int j = 0; j < sugars; j++)
              Image.asset(
                "assets/img/sugar_cube.png",
                color: Colors.brown[100],
                width: 25,
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox(width: 50)),
            // FilledButton(
            //   style: FilledButton.styleFrom(
            //     foregroundColor: Colors.white,
            //     backgroundColor: Colors.brown,
            //   ),
            //   onPressed: increaseSugars,
            //   child: Text("+"),
            // ),
            StyledButton(onPressed: increaseSugars, child: Text("+")),
          ],
        ),
      ],
    );
  }
}
