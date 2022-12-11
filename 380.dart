import 'dart:math';

class RandomizedSet {
  Random random = new Random();
  Set set = {};

  RandomizedSet() {}

  bool insert(int val) => set.add(val);
  bool remove(int val) => set.remove(val);
  int getRandom() => set.elementAt(random.nextInt(set.length));
}
