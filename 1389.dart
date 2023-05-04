class Solution {
  List<int> createTargetArray(List<int> nums, List<int> index) {
    List<int> res = [];
    for (int i = 0; i < nums.length; i++) {
      res.insert(index[i], nums[i]);
    }
    return res;
  }
}
