class Solution {
  List<List<int>> subsetsWithDup(List<int> nums) {
    nums.sort();
    List<List<int>> ans = [];
    backtrack(nums, 0, [], ans);
    return ans;
  }

  void backtrack(
      List<int> nums, int start, List<int> path, List<List<int>> ans) {
    if (start == nums.length) {
      ans.add([...path]);
      return;
    }

    // if add
    path.add(nums[start]);
    backtrack(nums, start + 1, path, ans);
    path.removeLast();

    // dont add
    int next = start + 1;
    while (next < nums.length && nums[next] == nums[start]) next++;
    backtrack(nums, next, path, ans);
  }
}
