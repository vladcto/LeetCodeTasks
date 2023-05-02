class Solution {
  int arraySign(List<int> nums) {
    return nums.fold(1, (p, e) => p * e.sign);
  }
}
