import 'dart:math' show max;

class Solution {
  String addBinary(String a, String b) {
    int maxLength = max(a.length, b.length);
    a = a.padLeft(maxLength, '0');
    b = b.padLeft(maxLength, '0');
    int remainder = 0;
    String result = "";

    for (int i = maxLength - 1; i >= 0; i--) {
      int v1 = int.parse(a[i]) + remainder;
      int v2 = int.parse(b[i]);
      result = ((v1 + v2) % 2).toString() + result;
      remainder = (v1 + v2) ~/ 2;
    }
    return remainder > 0 ? remainder.toString() + result : result;
  }
}
