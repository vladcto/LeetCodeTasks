import 'dart:collection';
import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    HashMap<String, int> indexMap = HashMap<String, int>();
    int res = 0, j = 0;

    for (int i = 0; i < s.length; i++) {
      if (indexMap.containsKey(s[i])) {
        j = i;
      }
      indexMap[s[i]] = i;
      res = max(res, i - j + 1);
    }
    return res;
  }
}
