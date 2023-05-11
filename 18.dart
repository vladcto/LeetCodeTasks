class Solution {
  List<List<int>> fourSum(List<int> nums, int target) {
    nums.sort();
    Unique4ListSet res = Unique4ListSet();
    for (int i = 0; i < nums.length - 3; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        int sums = nums[i] + nums[j];
        final sumsEnd = twoSum(nums, j + 1, target - sums);
        sumsEnd.forEach((e) => e.addAll([nums[i], nums[j]]));
        sumsEnd.forEach((e) => res.add(e));
      }
    }
    return res.values;
  }

  List<List<int>> twoSum(List<int> nums, int li, int target) {
    List<List<int>> res = [];
    int ri = nums.length - 1;
    while (li < ri) {
      int sums = nums[li] + nums[ri];
      if (sums == target) {
        res.add([nums[li], nums[ri]]);
        li++;
        ri--;
      } else if (sums > target) {
        ri--;
      } else {
        li++;
      }
    }
    return res;
  }
}

class Unique4ListSet {
  final Map<int, List<int>> map = {};

  List<List<int>> get values => map.values.toList();

  void add(List<int> list) => map[_calculateHash(list)] = list;

  int _calculateHash(List<int> a) => Object.hash(a[0], a[1], a[2], a[3]);
}
