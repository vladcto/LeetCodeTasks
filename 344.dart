class Solution {
  void reverseString(List<String> s) {
    reverse(0, s.length - 1, s);
  }

  void reverse(int start, int end, List ls) {
    int li = start, ri = end;
    while (li < ri) {
      var tmp = ls[li];
      ls[li] = ls[ri];
      ls[ri] = tmp;
      li++;
      ri--;
    }
  }
}
