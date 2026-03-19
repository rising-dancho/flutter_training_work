import 'package:flutter_rpg/models/character.dart';

mixin Stats {
  // MIXIN: COLLECTION OF FIELDS and methods that can be used by other classes
  // mixins are needed because you can not extend multiple classes
  // “inject” reusable behavior into multiple classes
  // private fields
  int _points = 10;
  int _health = 10;
  int _attack = 10;
  int _defense = 10;
  int _skill = 10;

  // getter : access control > used an arrow function to return a single value
  int get points => _points;

  // methods
  Map<String, int> get statsAsMap => {
    "health": _health,
    "attack": _attack,
    "defense": _defense,
    "skill": _skill,
  };
  // MAP : OBJECT with type safety
  // LIST : ARRAY with type safety
  List<Map<String, String>> get statsAsFormattedList => [
    {"health": "health", "value": _health.toString()},
    {"health": "attack", "value": _attack.toString()},
    {"health": "defense", "value": _defense.toString()},
    {"health": "skil", "value": _skill.toString()},
  ];

  void increaseStat(String stat) {
    if (_points > 0) {
      if (stat == "health") {
        _health += 1;
      }
      if (stat == "attack") {
        _attack += 1;
      }
      if (stat == "defense") {
        _defense += 1;
      }
      if (stat == "skill") {
        _skill += 1;
      }

      _points--; // decrease point
    }
  }

  void decreaseStat(String stat) {
    if (stat == "health" && _health > 5) {
      _health--;
      _points++;
    }
    if (stat == "attack" && _attack > 5) {
      _attack--;
      _points++;
    }
    if (stat == "defense" && _defense > 5) {
      _defense--;
      _points++;
    }
    if (stat == "skill" && _skill > 5) {
      _skill--;
      _points++;
    }
  }
}
