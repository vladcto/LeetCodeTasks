import 'dart:math';

class Solution {
  int maxProduct(List<int> nums) {
    int minNegative = 1, res = nums[0], product = 1;
    for (int i = 0; i < nums.length; i++) {
      product *= nums[i];
      res = max(res, product);
      res = max(res, product ~/ minNegative);
      if (product < 0 && minNegative == 1) minNegative = product;
      if (product == 0) {
        product = 1;
        minNegative = 1;
      }
    }
    return res;
  }
}
