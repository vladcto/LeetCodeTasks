class Solution {
  List<List<int>> findMatrix(List<int> nums) {
    final used = <int>{};
    List<List<int>> res = [];
    while (nums.isNotEmpty) {
      for (int i = nums.length - 1; i >= 0; i--) {
        if (!used.contains(nums[i])) {
          used.add(nums[i]);
          nums.removeAt(i);
        }
      }
      res.add(used.toList());
      used.clear();
    }
    return res;
  }
}
