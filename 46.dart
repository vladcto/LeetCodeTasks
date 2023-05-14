class Solution {
  List<List<int>> permute(List<int> nums) {
    List<List<int>> res = [];
    permutation(nums, (p0) => res.add(p0), []);
    return res;
  }

  void permutation(
      List<int> nums, void action(List<int> path), List<int> path) {
    if (nums.length == 0) {
      action([...path]);
      return;
    }

    final nowNum = nums.removeLast();
    for (int i = 0; i <= path.length; i++) {
      path.insert(i, nowNum);
      permutation(nums, action, path);
      path.removeAt(i);
    }
    nums.add(nowNum);
  }
}
