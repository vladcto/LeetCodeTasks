class Solution {
  int majorityElement(List<int> nums) {
    int count = 0;
    int mostAppeared = 0;
    for (int i = 0; i < nums.length; i++) {
      if (count == 0) mostAppeared = nums[i];
      count += nums[i] == mostAppeared ? 1 : -1;
    }
    return count;
  }
}
