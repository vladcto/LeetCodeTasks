import 'dart:math';

class Solution {
  static const vowels = {"a", "e", "i", "o", "u"};

  int maxVowels(String s, int k) {
    int vowelsCount =
        s.substring(0, k).split("").where((e) => vowels.contains(e)).length;
    int res = vowelsCount;
    for (int i = 1; i < s.length - k + 1; i++) {
      vowelsCount += vowels.contains(s[i - 1]) ? -1 : 0;
      vowelsCount += vowels.contains(s[i + k - 1]) ? 1 : 0;
      res = max(res, vowelsCount);
    }
    return res;
  }
}
