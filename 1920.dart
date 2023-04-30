class Solution {
  List<int> buildArray(List<int> nums) {
    return List.generate(nums.length, (i) => nums[nums[i]]);
  }
}
