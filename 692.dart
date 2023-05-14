class Solution {
  List<String> topKFrequent(List<String> words, int k) {
    final frequences = <String, int>{};
    for (final word in words) {
      frequences[word] = (frequences[word] ?? 0) + 1;
    }
    final pairs = frequences.entries.toList()
      ..sort(
        (p, e) => 2 * e.value.compareTo(p.value) + p.key.compareTo(e.key),
      );
    return pairs.sublist(0, k).map((e) => e.key).toList();
  }
}
