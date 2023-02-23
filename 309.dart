import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    if (prices.length < 2) return 0;
    int s1 = -prices[0]; // buy
    int s2 = -2000; // sell
    int s3 = 0; // hold
    for (int i = 1; i < prices.length; i++) {
      int tmp = s2;
      s2 = s1 + prices[i];
      s1 = max(s3 - prices[i], s1);
      s3 = max(tmp, s3);
    }
    return max(s2, s3);
  }
}
