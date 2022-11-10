class Solution {
  List<int> sortedSquares(List<int> nums) {
    var res = List<int>.filled(nums.length, 0, growable: false);
    int ri = 0;
    while (ri < nums.length) {
      if (nums[ri].sign == 1) break;
      ri++;
    }
    int li = ri - 1;

    for (int i = 0; i < nums.length; i++) {
      if (li < 0 || ri < nums.length && nums[li].abs() > nums[ri].abs()) {
        res[i] = nums[ri] * nums[ri];
        ri++;
      } else {
        res[i] = nums[li] * nums[li];
        li--;
      }
    }
    return res;
  }
}
