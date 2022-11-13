class Solution {
  bool isPowerOfTwo(int n) {
    if (n == 0) return true;
    if (n & (n - 1) == 0) return true;
    return false;
  }
}
