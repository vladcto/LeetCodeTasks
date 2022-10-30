class Solution {
  int search(List<int> nums, int target) {
    int l = 0, r = nums.length - 1;
    while (l <= r) {
      int center = (l + r) ~/ 2;
      if (nums[center] > target) {
        r = center - 1;
      } else if (nums[center] < target) {
        l = center + 1;
      } else {
        return center;
      }
    }
    return -1;
  }
}
