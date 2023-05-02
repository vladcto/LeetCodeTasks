class Solution {
  int sumOfMultiples(int n) {
    int res = 0;
    for (int i = 3; i <= n; i++) {
      if (i % 3 == 0 || i % 5 == 0 || i % 7 == 0) res += i;
    }
    return res;
  }
}
