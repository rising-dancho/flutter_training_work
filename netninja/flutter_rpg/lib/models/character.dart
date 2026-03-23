import 'package:flutter_rpg/models/skills.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocations.dart';

class Character with Stats {
  // constructor
  Character({
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id,
  });

  // LIST : [] → ordered, indexed (array)
  // SET  : {} → unique values only (unique sort of array)
  // MAP  : {} → key:value pairs (object)

  // fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  // getters : this controls how data is accessed..
  bool get isFav => _isFav;

  // methods
  void _toggleIsFav() {
    _isFav = !_isFav;
  }

  // in dart, classes are types too not just String, int, bool
  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

// dummy characters data
List<Character> characters = [
  Character(
    id: "1",
    name: "Klara",
    vocation: Vocation.wizard,
    slogan: "Kapumf!",
  ),
  // Character(
  //   id: "2",
  //   name: "Johny",
  //   vocation: Vocation.junkie,
  //   slogan: "Light me up...",
  // ),
  // Character(
  //   id: "3",
  //   name: "Crimson",
  //   vocation: Vocation.raider,
  //   slogan: "Fire in the hole!",
  // ),
  // Character(
  //   id: "4",
  //   name: "Shaun",
  //   vocation: Vocation.ninja,
  //   slogan: "Alright then gang.",
  // ),
];
