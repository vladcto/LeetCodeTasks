class Solution {
  int numIdenticalPairs(List<int> nums) {
    List<int> occurrences = List.filled(100, 0);
    for (var nowNum in nums) {
      occurrences[nowNum - 1]++;
    }

    int res = 0;
    for (var i in occurrences) {
      res += combinations(i);
    }
    return res;
  }

  int combinations(int items) => (items * (items - 1)) ~/ 2;
}
