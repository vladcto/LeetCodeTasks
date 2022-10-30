class Solution {
  List<int> plusOne(List<int> digits) {
    List<int> res = digits;
    int remainder = 1;
    for (int i = digits.length - 1; i >= 0 && remainder != 0; i--) {
      int val = digits[i] + remainder;
      res[i] = digits[i] + remainder % 10;
      remainder = val ~/ 10;
    }
    return res;
  }
}
