import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    final visited = <String>{};
    int res = 0;
    for (int ri = 0, li = 0; ri < s.length; ri++) {
      while (visited.contains(s[ri])) {
        visited.remove(s[li++]);
      }
      visited.add(s[ri]);
      res = max(res, ri - li + 1);
    }
    return res;
  }
}
