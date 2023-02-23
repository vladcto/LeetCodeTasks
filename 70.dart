class Solution {
  int climbStairs(int n) {
    int step1 = 1, step2 = 0;
    for (int i = 0; i < n; i++) {
      step1 += step2;
      step2 = step1 - step2;
    }
    return step1;
  }
}

class Solution1 {
  Map<int, int> memoryze = {0: 1};

  int climbStairs(int n) {
    if (n < 0) return 0;
    if (memoryze[n] != null) return memoryze[n]!;
    int res = climbStairs(n - 1) + climbStairs(n - 2);
    memoryze[n] = res;
    return climbStairs(n - 1) + climbStairs(n - 2);
  }
}
