class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    var resSet = nums1.toSet().intersection(nums2.toSet());
    return resSet.toList();
  }
}
