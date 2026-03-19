import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocations.dart';
import 'package:flutter_rpg/screens/home/character_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // dummy characters data
  List<Character> characters = [
    Character(
      id: "1",
      name: "Klara",
      vocation: Vocation.wizard,
      slogan: "Kapumf!",
    ),
    Character(
      id: "2",
      name: "Johny",
      vocation: Vocation.junkie,
      slogan: "Light me up...",
    ),
    Character(
      id: "3",
      name: "Crimson",
      vocation: Vocation.raider,
      slogan: "Fire in the hole!",
    ),
    Character(
      id: "4",
      name: "Shaun",
      vocation: Vocation.ninja,
      slogan: "Alright then gang.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledTitle("Your Characters"), centerTitle: true),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // needs context but we are declaring that we dont need it right now _,
            Expanded(
              child: ListView.builder(
                itemCount: characters.length,
                itemBuilder: (_, index) {
                  return CharacterCard(characters[index]);
                },
              ),
            ),

            StyledButton(onPressed: () {}, child: StyledHeading("Create New")),
          ],
        ),
      ),
    );
  }
}
