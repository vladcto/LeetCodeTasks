class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    int size = nums1.length + nums2.length;
    size += size % 2 == 0 ? 2 : 0;
    int i1 = 0, i2 = 0, lastI = 0;
    List last2 = [0, 0];
    while (i1 + i2 < size / 2) {
      if (i2 >= nums2.length || (i1 < nums1.length && nums1[i1] < nums2[i2]))
        last2[(lastI++) % 2] = nums1[i1++];
      else
        last2[(lastI++) % 2] = nums2[i2++];
    }

    if (size % 2 == 1) {
      return last2[(lastI + 1) % 2] / 1;
    } else {
      return (last2[0] + last2[1]) / 2;
    }
  }
}
