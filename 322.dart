import 'dart:math';

class Solution {
  int coinChange(List<int> coins, int amount) {
    if (amount == 0) return 0;
    final coinsSum = List.generate(
      amount + 1,
      (i) => coins.contains(i) ? 1 : 10001,
    );
    for (int i = 1; i < coinsSum.length; i++) {
      for (final coin in coins) {
        if (i - coin >= 0)
          coinsSum[i] = min(coinsSum[i], coinsSum[i - coin] + 1);
      }
    }
    return coinsSum.last == 10001 ? -1 : coinsSum.last;
  }
}
