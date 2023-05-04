class Solution {
  int xorOperation(int n, int start) {
    int res = 0;
    for (int i = start; i < n * 2 + start; i += 2) {
      res ^= i;
    }
    return res;
  }
}
