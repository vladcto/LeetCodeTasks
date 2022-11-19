import 'dart:math' show sqrt;

class Solution {
  bool isUgly(int n) {
    if (n <= 0) return false;
    while (n % 2 == 0) n ~/= 2;
    while (n % 3 == 0) n ~/= 3;
    while (n % 5 == 0) n ~/= 5;
    if (n <= 1) return true;
    return isSimple(n);
  }

  // n >6 by condition
  bool isSimple(int n) {
    if (n == 2) return true;
    if (n % 2 == 0) return false;
    int sqrtN = sqrt(n).toInt();
    for (int i = 3; i <= sqrtN; i += 2) if (n % i == 0) return false;
    return true;
  }
}
