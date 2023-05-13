import 'dart:math';

class Solution {
  int characterReplacement(String s, int k) {
    final letters = <String, int>{};
    int start = 0, res = 0;
    for (int i = 0; i < s.length; i++) {
      letters[s[i]] = (letters[s[i]] ?? 0) + 1;
      while (!canReplace(letters, k)) {
        letters[s[start]] = letters[s[start]]! - 1;
        start++;
      }
      res = max(res, i - start + 1);
    }
    return res;
  }

  bool canReplace(Map<String, int> letters, int k) {
    int maxSymbol = -1, sums = 0;
    for (final pair in letters.entries) {
      sums += pair.value;
      maxSymbol = max(maxSymbol, pair.value);
    }
    return (sums - maxSymbol) <= k;
  }
}
