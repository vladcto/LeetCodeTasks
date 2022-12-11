class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> occurencesMap = {};
    for (int i = 0; i < arr.length; i++) {
      occurencesMap[arr[i]] = (occurencesMap[arr[i]] ?? 0) + 1;
    }

    Set<int> visitedOccurences = {};
    for (var key in occurencesMap.keys) {
      if (visitedOccurences.contains(occurencesMap[key])) return false;
      visitedOccurences.add(occurencesMap[key]!);
    }
    return true;
  }
}
