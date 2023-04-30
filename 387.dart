class Solution {
  int firstUniqChar(String s) {
    Map<String, int> occurrences = {};
    var letters = s.split("");

    for (int i = 0; i < s.length; i++) {
      var letter = letters[i];
      occurrences[letter] = occurrences.containsKey(letter) ? -1 : i;
    }

    for (var pair in occurrences.entries) {
      if (pair.value != -1) return pair.value;
    }
    return -1;
  }
}
