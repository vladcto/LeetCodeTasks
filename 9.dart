import 'dart:math';

class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;
    if (x == 0) return true;

    int dimens = log(x) ~/ ln10;
    int lDiv = pow(10, dimens).toInt(), rDiv = 1;
    for (int i = 0; i <= dimens / 2; i++) {
      int l = x ~/ lDiv % 10;
      int r = x ~/ rDiv % 10;
      lDiv ~/= 10;
      rDiv *= 10;
      if (l != r) return false;
    }
    return true;
  }
}
