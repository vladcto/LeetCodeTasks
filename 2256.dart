class Solution {
  int minimumAverageDifference(List<int> nums) {
    if (nums.length == 0) return 0;
    int rSum = nums.reduce((value, element) => value += element), lSum = 0;
    int resI = 0, resDif = 10000000;
    for (int i = 0; i < nums.length - 1; i++) {
      lSum += nums[i];
      rSum -= nums[i];
      int dif = (lSum ~/ (i + 1) - rSum ~/ (nums.length - i - 1)).abs();
      if (dif < resDif) {
        resDif = dif;
        resI = i;
      }
    }
    lSum += nums.last;
    return (lSum ~/ nums.length) < resDif ? nums.length - 1: resI;
  }
}