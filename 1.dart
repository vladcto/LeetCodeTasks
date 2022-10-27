import 'dart:collection';

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var sortedNums = [...nums.toSet().toList()]..sort();
    int ir = 0, il = sortedNums.length - 1;
    while (true) {
      int diff = sortedNums[ir] + sortedNums[il] - target;
      if (diff == 0) {
        return [nums.indexOf(sortedNums[ir]), nums.lastIndexOf(sortedNums[il])];
      } else if (diff > 0) {
        il--;
      } else {
        ir++;
      }
    }
  }
}