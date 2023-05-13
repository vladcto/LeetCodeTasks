class Solution {
  int longestConsecutive(List<int> nums) {
    if(nums.isEmpty) return 0;
    nums = nums.toSet().toList()..sort();
    int res = 1;
    int count = 1;
    for(int i = 1 ; i < nums.length; i++){
      if(nums[i - 1] + 1 != nums[i]) count = 0;
      count++;
      res = max(res, count);
    }
    return res;
  }
}