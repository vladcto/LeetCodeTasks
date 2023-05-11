class Solution {
  List<List<int>> threeSum(List<int> nums) {
    nums.sort();
    Unique3ListSet res = Unique3ListSet();
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (binarySearch(nums, -nums[i] - nums[j], j + 1)) {
          res.add([nums[i], nums[j], -nums[i] - nums[j]]);
        }
      }
    }
    return res.values;
  }

  bool binarySearch(List<int> nums, int target, [int li = 0]) {
    int ri = nums.length - 1;
    while (li <= ri) {
      int ci = (ri + li) ~/ 2;
      if (nums[ci] == target) {
        return true;
      } else if (nums[ci] > target) {
        ri = ci - 1;
      } else {
        li = ci + 1;
      }
    }
    return false;
  }
}

class Unique3ListSet {
  final Map<int, List<int>> map = {};

  List<List<int>> get values => map.values.toList();

  void add(List<int> list) => map[_calculateHash(list)] = list;

  int _calculateHash(List<int> a) => Object.hash(a[0], a[1], a[2]);
}
