class Solution {
  bool equalFrequency(String word) {
    Map<String, int> frequency = {};
    for (final letter in word.split("")) {
      frequency[letter] = frequency.putIfAbsent(letter, () => 0) + 1;
    }

    for (final key in frequency.keys) {
      frequency[key] = frequency[key]! - 1;
      if (isEqualFrequency(frequency)) return true;
      frequency[key] = frequency[key]! + 1;
    }
    return false;
  }

  bool isEqualFrequency(Map<String, int> frequency) {
    final values = frequency.values.toList();
    int first = values.first != 0 ? values.first : values.last;
    return values.every((e) => e == first || e == 0);
  }
}
