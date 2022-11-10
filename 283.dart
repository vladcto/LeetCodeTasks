class Solution {
  void moveZeroes(List<int> nums) {
    int numI = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        nums[numI++] = nums[i];
      }
    }
    nums.fillRange(numI, nums.length, 0);
  }
}
