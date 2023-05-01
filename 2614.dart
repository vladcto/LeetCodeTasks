import 'dart:math';

class Solution {
  int diagonalPrime(List<List<int>> nums) {
    int maxPrime = 0;
    void checkNum(int n) {
      if (isPrime(n)) maxPrime = max(maxPrime, n);
    }

    for (int i = 0; i < nums.length; i++) {
      checkNum(nums[i][i]);
    }

    for (int i = 0; i < nums.length; i++) {
      checkNum(nums[i][nums.length - i - 1]);
    }

    return maxPrime;
  }

  bool isPrime(int n) {
    if (n == 1) return false;
    for (int i = 2; i <= n ~/ i; i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }
}
