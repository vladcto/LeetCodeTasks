class Solution {
  bool isHappy(int n) {
    return checkHappy(n, {});
  }

  bool checkHappy(int n, Set<int> visitedNums) {
    if (visitedNums.contains(n)) return false;
    visitedNums.add(n);
    if (n == 1) return true;
    int nextN = 0;
    while (n > 0) {
      nextN = (n % 10) * (n % 10);
    }
    return checkHappy(nextN, visitedNums);
  }
}
