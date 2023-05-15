class Solution {
  List<int> partitionLabels(String s) {
    List<int> res = [];
    // fill symbol count map
    Map<String, int> occurence = {};
    for (int i = 0; i < s.length; i++) {
      occurence[s[i]] = (occurence[s[i]] ?? 0) + 1;
    }
    // count partition letters
    final used = <String>{};
    int start = 0;
    for (int i = 0; i < s.length; i++) {
      used.add(s[i]);
      occurence[s[i]] = occurence[s[i]]! - 1;
      // substring can be partitioned
      if (isUsedAllOccurence(occurence, used)) {
        res.add(i - start + 1);
        used.clear();
        start = i + 1;
      }
    }
    return res;
  }

  bool isUsedAllOccurence(Map<String, int> occurence, Set<String> used) {
    for (final use in used) {
      if (occurence[use]! != 0) return false;
    }
    return true;
  }
}
