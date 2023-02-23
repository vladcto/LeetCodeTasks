import 'dart:math' show max;

class Solution {
  int rob(List<int> nums) {
    if (nums.length == 1) return nums[0];
    if (nums.length == 2) return max(nums[0], nums[1]);

    if (nums.length > 2) nums[2] = nums[0] + nums[2];
    for (int i = 3; i < nums.length; i++) {
      int curVal = nums[i];
      nums[i] = max(nums[i - 2] + curVal, nums[i - 3] + curVal);
    }
    return max(nums.last, nums[nums.length - 2]);
  }
}
