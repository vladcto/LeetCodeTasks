class Solution {
  int fourSumCount(
      List<int> nums1, List<int> nums2, List<int> nums3, List<int> nums4) {
    final sums1 = twoSums(nums1, nums2);
    final sums2 = twoSums(nums3, nums4);
    int res = 0;
    for (var firstSum in sums1.keys) {
      if (sums2.containsKey(-firstSum)) {
        res += sums1[firstSum]! * sums2[-firstSum]!;
      }
    }
    return res;
  }

  Map<int, int> twoSums(List<int> nums1, List<int> nums2) {
    Map<int, int> res = {};
    for (var num1 in nums1) {
      for (var num2 in nums2) {
        res[num1 + num2] = (res[num1 + num2] ?? 0) + 1;
      }
    }
    return res;
  }
}
