class Solution {
  void rotate(List<int> nums, int k) {
    int step = nums.length - (k % nums.length);
    var tmp = List<int>.generate(
        nums.length, ((index) => nums[(index + step) % nums.length]));
    nums.setRange(0, nums.length, tmp);
  }
}
