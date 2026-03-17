mixin Stats {
  // MIXIN: COLLECTION OF FIELDS and methods that can be used by other classes
  // mixins are needed because you can not extend multiple classes
  // “inject” reusable behavior into multiple classes
  int _points = 10;
  int _health = 10;
  int _attack = 10;
  int _defense = 10;

  void increaseStat(String stat) {}

  void decreaseStat(String stat) {}
}
