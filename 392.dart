class Solution {
  bool isSubsequence(String s, String t) {
    int nowI = 0;
    for (int i = 0; i < t.length && s.length != nowI; i++) {
      if (t.codeUnitAt(i) == s.codeUnitAt(nowI)) nowI++;
    }
    return s.length == nowI;
  }
}
