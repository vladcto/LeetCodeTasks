class Solution {
  int minimumSum(int num) {
    final digits = [
      num % 10,
      num ~/ 10 % 10,
      num ~/ 100 % 10,
      num ~/ 1000,
    ];
    digits.sort();
    return digits[0] * 10 + digits[1] * 10 + digits[2] + digits[3];
  }
}
