class Solution {
  int countDigits(int num) {
    final digits = num.toString().split("").map((e) => int.parse(e));
    return digits.where((e) => num % e == 0).length;
  }
}
