class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> occurrences = {};
    for (var symb in magazine.split("")) {
      occurrences[symb] = occurrences.putIfAbsent(symb, () => 0) + 1;
    }

    for (var symb in ransomNote.split("")) {
      if (!occurrences.containsKey(symb)) return false;
      occurrences[symb] = occurrences[symb]! - 1;
      if (occurrences[symb]! < 0) return false;
    }
    return true;
  }
}
