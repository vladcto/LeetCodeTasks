class Solution {
  bool canBeIncreasing(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      bool increasing = true;
      var removed = nums.removeAt(i);
      for (int j = 1; j < nums.length && increasing; j++) {
        if (nums[j - 1] >= nums[j]) increasing = false;
      }
      if (increasing) return true;
      nums.insert(i, removed);
    }
    return false;
  }
}
