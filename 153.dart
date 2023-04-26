class Solution {
  int findMin(List<int> nums) {
    int firstNum = nums.first;
    int li = 0, ri = nums.length - 1;
    while (li <= ri) {
      int ci = (li + ri) ~/ 2;
      if (nums[ci] >= firstNum) {
        li = ci + 1;
      } else {
        ri = ci - 1;
      }
    }
    return nums[((li + ri) ~/ 2 + 1) % nums.length];
  }
}
