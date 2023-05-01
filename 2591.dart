import 'dart:math';

class Solution {
  int distMoney(int money, int children) {
    for (int i = min(money ~/ 8, children); i > 0; i--) {
      if (canAfford(money - i * 8, children - i)) return i;
    }
    return canAfford(money, children) ? 0 : -1;
  }

  bool canAfford(int money, int children) {
    if (children == 0 && money > 0) return false;
    if (money < children) return false;
    return money != 4 || children != 1;
  }
}
