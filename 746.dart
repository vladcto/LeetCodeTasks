import 'dart:math' show max;

class Solution {
  int rob(List<int> nums) {
    int rob = 0;
    int wait = 0;
    for (int i = 0; i < nums.length; i++) {
      final lastStep = wait;
      wait = max(rob, wait);
      rob = lastStep + nums[i];
    }
    return max(wait, rob);
  }
}
