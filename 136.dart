class Solution {
  int singleNumber(List<int> nums) {
    Set<int> used = {};
    for (int i = 0; i < nums.length; i++) {
      if (used.contains(nums[i]))
        used.remove(nums[i]);
      else
        used.add(nums[i]);
    }
    return used.first;
  }
}
