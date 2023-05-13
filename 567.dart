class Solution {
  static final firstCode = "a".codeUnitAt(0);

  bool checkInclusion(String s1, String s2) {
    final frequences = List.filled(26, 0);
    for (int i = 0; i < s1.length; i++) {
      frequences[s1[i].codeUnitAt(0) - firstCode]--;
    }
    for (int i = 0; i < s2.length; i++) {
      frequences[s2[i].codeUnitAt(0) - firstCode]++;
      if (i >= s1.length)
        frequences[s2[i - s1.length].codeUnitAt(0) - firstCode]--;
      if (frequences.every((e) => e >= 0)) return true;
    }
    return false;
  }
}
