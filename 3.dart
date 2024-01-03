import 'dart:collection';
import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    final indexMap = HashMap<String, int>();
    var res = 0, j = 0;

    for (var i = 0; i < s.length; i++) {
      if (indexMap.containsKey(s[i])) {
        res = max(res, i - j);
        j = max(indexMap[s[i]]! + 1, j);
      }
      indexMap[s[i]] = i;
    }
    return max(res, s.length - j);
  }
}
