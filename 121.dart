import 'dart:math' show max;

class Solution {
  int maxProfit(List<int> prices) {
    int profit = 0, minBuyPrice = 1000001;
    for (int i = 0; i < prices.length; i++) {
      if (minBuyPrice > prices[i]) {
        minBuyPrice = prices[i];
      } else {
        profit = max(profit, prices[i] - minBuyPrice);
      }
    }
    return profit;
  }
}
