class Solution {
  int maxSatisfaction(List<int> satisfaction) {
    satisfaction.sort();
    int ans = 0, sums = 0;
    for (int i = satisfaction.length - 1; i >= 0; i--) {
      sums += satisfaction[i];
      if (sums <= 0) break;
      ans += sums;
    }
    return ans;
  }
}
