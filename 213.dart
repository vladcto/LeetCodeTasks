import 'dart:math';

class Solution {
  int rob(List<int> nums) {
    if (nums.length == 1) return nums[0];
    int tmp = nums.last;
    nums[nums.length - 1] = 0;
    int ans1 = robLinear(nums);
    nums[nums.length - 1] = tmp;
    nums[0] = 0;
    int ans2 = robLinear(nums);
    return max(ans1, ans2);
  }

  int robLinear(List<int> nums) {
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
