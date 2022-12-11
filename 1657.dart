class Solution {
  bool closeStrings(String word1, String word2) {
    if (word1.length != word2.length) return false;
    List<int> freq1 = List.filled(26, 0);
    List<int> freq2 = List.filled(26, 0);
    for (int i = 0; i < word1.length; i++) {
      freq1[word1.codeUnitAt(i) - "a".codeUnitAt(0)]++;
      freq2[word2.codeUnitAt(i) - "a".codeUnitAt(0)]++;
    }
    freq1.sort();
    freq2.sort();
    print(freq1);

    if (!{...word1.runes}.containsAll({...word2.runes}) ||
        !{...word2.runes}.containsAll({...word1.runes})) return false;
    for (int i = 0; i < freq1.length; i++) if (freq1[i] != freq2[i]) return false;
    return true;
  }
}
