class Solution {
  List<int> decompressRLElist(List<int> nums) {
    final res = <int>[];
    for (int i = 0; i < nums.length; i += 2) {
      res.addAll(List.filled(nums[i], nums[i + 1]));
    }
    return res;
  }
}
