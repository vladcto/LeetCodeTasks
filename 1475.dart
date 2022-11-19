class Solution {
  List<int> finalPrices(List<int> prices) {
    List<int> monotonicPrices = [prices.last];
    for (int i = prices.length - 2; i >= 0; i--) {
      while (!monotonicPrices.isEmpty && monotonicPrices.last < prices[i])
        monotonicPrices.removeLast();
      monotonicPrices.add(prices[i]);
      if (monotonicPrices.length > 1)
        prices[i] -= monotonicPrices[monotonicPrices.length - 2];
    }
    return prices;
  }
}
