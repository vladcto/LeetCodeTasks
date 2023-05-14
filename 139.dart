class Solution {
  bool wordBreak(String s, List<String> wordDict) {
    final wordSet = wordDict.toSet();

    final breakable = List.filled(s.length + 1, false);
    breakable[0] = true;
    for (int i = 1; i <= s.length; i++) {
      for (int j = i - 1; j >= 0; j--) {
        final substring = s.substring(j, i);
        if (wordSet.contains(substring) && breakable[j]) {
          breakable[i] = breakable[j];
          break;
        }
      }
    }

    return breakable.last;
  }
}
