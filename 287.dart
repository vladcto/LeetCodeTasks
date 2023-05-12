class Solution {
  int findDuplicate(List<int> nums) {
    Set<int> visited = {};
    for (var num in nums) {
      if (visited.contains(num)) return num;
      visited.add(num);
    }
    return 0;
  }
}
