class Solution {
  int maxProfit(List<int> prices) {
    int res = 0, minBuy = prices[0], maxSold = prices[0];
    for(int i = 0; i < prices.length; i++){
      if(prices[i] < maxSold){
        res += maxSold - minBuy;
        minBuy = prices[i];
        maxSold = prices[i];
      }else{
        maxSold = prices[i];
      }
    }
    return res + maxSold - minBuy;
  }
}