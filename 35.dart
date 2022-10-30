class Solution {
  int searchInsert(List<int> nums, int target) {
    int l = 0, r = nums.length - 1;
    int center = 0;
    while (l <= r) {
      center = (l + r) ~/ 2;
      if (nums[center] == target) {
        return center;
      } else if (nums[center] > target) {
        r = center - 1;
      } else {
        l = center + 1;
      }
    }
    return nums[center] > target ? center : center + 1;
  }
}
