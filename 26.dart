class Solution {
  int removeDuplicates(List<int> nums) {
    int resI = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[resI] != nums[i]) nums[++resI] = nums[i];
    }
    return resI + 1;
  }
}
