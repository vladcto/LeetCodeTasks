class Solution {
  String frequencySort(String s) {
    Map<String, int> frequency = {};
    for (int i = 0; i < s.length; i++) frequency[s[i]] = 1 + (frequency[s[i]] ?? 0);

    var sortedMap = frequency.entries.toList()
      ..sort(((a, b) => b.value > a.value ? 1 : -1));
    return sortedMap.fold<String>("",
        ((previousValue, element) => previousValue + element.key * element.value));
  }
}
