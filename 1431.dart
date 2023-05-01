import 'dart:math';

class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    int maxCandy = candies.reduce((p, e) => max(p, e));
    final res = List.filled(candies.length, false);
    for (int i = 0; i < candies.length; i++) {
      res[i] = candies[i] + extraCandies >= maxCandy;
    }
    return res;
  }
}
