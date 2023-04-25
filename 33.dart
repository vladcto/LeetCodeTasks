class Solution {
  int search(List<int> nums, int target) {
    int k = findK(nums);
    int li = 0;
    int ri = nums.length - 1;
    // binary search
    while (li <= ri) {
      int ci = (li + ri) ~/ 2;
      if (nums[(ci + k) % nums.length] > target) {
        ri = ci - 1;
      } else {
        li = ci + 1;
      }
    }

    int ci = ((li + ri) ~/ 2 + k) % nums.length;
    return nums[ci] == target ? ci : -1;
  }

  int findK(List<int> nums) {
    int li = 1;
    int ri = nums.length - 1;
    if (nums[0] <= nums[ri]) return 0;
    int fNum = nums[0];

    // binary search
    while (li <= ri) {
      int ci = (li + ri) ~/ 2;
      if (nums[ci] <= fNum) {
        ri = ci - 1;
      } else {
        li = ci + 1;
      }
    }

    return (li + ri) ~/ 2 + 1;
  }
}
