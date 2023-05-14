class Solution {
  static final firstCode = "a".codeUnitAt(0);

  List<int> findAnagrams(String s, String p) {
    final anagram = List.filled(26, 0);
    for (int i = 0; i < p.length; i++) {
      anagram[p[i].codeUnitAt(0) - firstCode]++;
    }

    List<int> res = [];
    final window = List.filled(26, 0);
    for (int i = 0; i < s.length; i++) {
      if (i >= p.length) window[s[i - p.length].codeUnitAt(0) - firstCode]--;
      window[s[i].codeUnitAt(0) - firstCode]++;
      if (listEquals(window, anagram)) res.add(i + 1 - p.length);
    }
    return res;
  }

  bool listEquals(List l1, List l2) {
    for (int i = 0; i < l1.length; i++) {
      if (l1[i] != l2[i]) return false;
    }
    return true;
  }
}
