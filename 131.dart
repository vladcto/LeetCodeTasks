class Solution {
  List<List<String>> partition(String s) {
    List<List<String>> res = [];
    backtrack(s, [], (e) => res.add(e));
    return res;
  }

  void backtrack(
    String s,
    List<String> path,
    action(List<String> path), [
    int start = 0,
  ]) {
    if (start >= s.length) {
      action([...path]);
      return;
    }

    for (int i = start; i < s.length; i++) {
      final substring = s.substring(start, i + 1);
      if (isPalindrome(substring)) {
        path.add(substring);
        backtrack(s, path, action, i + 1);
        path.removeLast();
      }
    }
  }

  bool isPalindrome(String s) {
    int li = 0, ri = s.length - 1;
    while (li < ri) {
      if (s[li] != s[ri]) return false;
      li++;
      ri--;
    }
    return true;
  }
}
