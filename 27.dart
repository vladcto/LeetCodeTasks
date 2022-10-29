class Solution {
  int removeElement(List<int> nums, int val) {
    int resI = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) nums[resI++] = nums[i];
    }
    return resI;
  }
}
