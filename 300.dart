import 'dart:math';

class Solution {
  int lengthOfLIS(List<int> nums) {
    if (nums.length == 1) return 1;
    List<int> increasing = List.filled(nums.length, 1);
    for (int i = 0; i < nums.length; i++) {
      for (int j = i - 1; j >= 0; j--) {
        if (nums[i] > nums[j]) {
          increasing[i] = max(increasing[i], increasing[j] + 1);
        }
      }
    }
    return increasing.reduce(max);
  }
}
