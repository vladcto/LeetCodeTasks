class Solution {
  List<int> leftRigthDifference(List<int> nums) {
    int lSum = 0, rSum = nums.reduce((a, b) => a + b);
    for (int i = 0; i < nums.length; i++) {
      var tmp = nums[i];
      rSum -= nums[i];
      nums[i] = (rSum - lSum).abs();
      lSum += tmp;
    }
    return nums;
  }
}
