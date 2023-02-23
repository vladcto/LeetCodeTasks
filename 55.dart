import 'dart:math' show max;

class Solution {
  bool canJump(List<int> nums) {
    int nowJump = nums[0];
    int nowI = 1;
    while (nowI < nums.length && nowJump > 0) {
      nowJump--;
      nowJump = max(nums[nowI], nowJump);
      nowI++;
    }
    return nowI == nums.length;
  }
}
