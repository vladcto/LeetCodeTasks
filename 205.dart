class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) return false;

    final match = <String, String>{};
    for (int i = 0; i < s.length; i++) {
      if (!match.containsKey(s[i])) {
        if (match.containsValue(t[i])) return false;
        match[s[i]] = t[i];
      } else if (match[s[i]] != t[i]) {
        return false;
      }
    }
    return true;
  }
}
