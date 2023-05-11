class Solution {
  List<List<int>> subsetsWithDup(List<int> nums) {
    List<List<int>> res = [];
    backtrack(nums, res, []);
    return res;
  }

  void backtrack(List<int> nums, List<List<int>> res, List<int> path,
      [int start = 0]) {
    final toAdd = List<int>.from(path)..sort();
    if (res.indexWhere((e) => compareLists(toAdd, e)) == -1) {
      res.add(List.from(toAdd));
    }

    for (int i = start; i < nums.length; i++) {
      path.add(nums[i]);
      backtrack(nums, res, path, i + 1);
      path.removeLast();
    }
  }

  bool compareLists(List<int> f, List<int> s) {
    if (f.length != s.length) return false;
    for (int i = 0; i < f.length; i++) {
      if (f[i] != s[i]) return false;
    }
    return true;
  }
}
