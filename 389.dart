class Solution {
  String findTheDifference(String s, String t) {
    Map<String, int> occurrences = {};

    for (var symb in s.split("")) {
      occurrences[symb] = occurrences.putIfAbsent(symb, () => 0) + 1;
    }
    for (var symb in t.split("")) {
      occurrences[symb] = occurrences.putIfAbsent(symb, () => 0) - 1;
    }

    for (var pair in occurrences.entries) {
      if (pair.value == -1) return pair.key;
    }
    return "";
  }
}
