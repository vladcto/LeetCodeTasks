class Solution {
  bool containsDuplicate(List<int> nums) {
    return nums.length != nums.toSet().length;
  }
}
