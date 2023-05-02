import 'dart:math';

class Solution {
  int maximumWealth(List<List<int>> accounts) {
    return accounts
        .map(
          (e) => e.reduce((p, e) => p + e),
        )
        .reduce((p, e) => max(p, e));
  }
}
