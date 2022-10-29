import 'dart:math';

class Solution {
  static const int max = 0x7fffffff;

  int reverse(int x) {
    if (x == 0) {
      return 0;
    }
    int sign = x.sign;
    x = x.abs();
    int dimens = myLog10(x);
    int result = 0;

    for (int i = 1; i <= dimens; i++) {
      result += x % 10 * pow(10, dimens - i).toInt();
      x ~/= 10;
    }

    if (result >= max) {
      return 0;
    }
    return result * sign;
  }

  int myLog10(int num) {
    int res = 0;
    while (num > 0) {
      num ~/= 10;
      res++;
    }
    return res;
  }
}
