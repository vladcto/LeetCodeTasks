class Solution {
  int minEatingSpeed(List<int> piles, int h) {
    int maxBanana = 1000000000;
    int minBanana = 1;

    while (minBanana < maxBanana) {
      int nowBanana = ((maxBanana + minBanana) / 2).ceil();
      if (canEat(piles, h, nowBanana)) {
        maxBanana = nowBanana - 1;
      } else {
        minBanana = nowBanana + 1;
      }
    }
    int res = ((minBanana + maxBanana) / 2).floor();
    return canEat(piles, h, res) ? res : res + 1;
  }

  bool canEat(List<int> piles, int h, int eat) {
    int eatHours = 0;
    for (final pile in piles) {
      eatHours += (pile / eat).ceil();
      if (eatHours > h) return false;
    }
    return true;
  }
}
