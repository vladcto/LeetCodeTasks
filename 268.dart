class Solution {
  int missingNumber(List<int> nums) {
    int sums = ((1 + nums.length) * nums.length) ~/ 2;
    nums.forEach((e) => sums -= e);
    return sums;
  }
}
