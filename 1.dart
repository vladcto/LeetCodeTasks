class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var terms = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
      if (terms.containsKey(target - nums[i])) {
        return [terms[target - nums[i]]!, i];
      }
      terms[nums[i]] = i;
    }
    throw Exception();
  }
}
