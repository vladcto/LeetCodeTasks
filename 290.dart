class Solution {
  bool wordPattern(String pattern, String s) {
    var addedWords = <String>{};
    var patternTable = <String, String>{};
    List<String> words = s.split(" ");
    if (words.length != pattern.length) return false;

    for (int i = 0; i < words.length; i++) {
      if (patternTable[pattern[i]] == null) {
        if (addedWords.contains(words[i])) return false;
        patternTable[pattern[i]] = words[i];
        addedWords.add(words[i]);
      } else if (patternTable[pattern[i]] != words[i]) return false;
    }
    return true;
  }
}
