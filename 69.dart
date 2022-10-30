class Solution {
  int mySqrt(int x) {
    if (x <= 1) {
      return x;
    }

    int l = 0;
    int r = x;
    int cent = 0;
    while (l <= r) {
      cent = (l + r) ~/ 2;
      if (cent * cent == x) {
        break;
      } else if (cent * cent > x) {
        r = cent - 1;
      } else {
        l = cent + 1;
      }
    }
    return cent * cent > x ? cent - 1 : cent;
  }
}
