class Solution {
  List<String> generateParenthesis(int n) {
    Set<String> res = {};
    backtrack(n, "", 0, (e) => res.add(e));
    return res.toList();
  }

  void backtrack(int n, String path, int open, void Function(String) callback) {
    if (n == 0 && open == 0) {
      callback(path);
      return;
    }
    if (open > 0) backtrack(n, path + ")", open - 1, callback);
    if (n > 0) backtrack(n - 1, path + "(", open + 1, callback);
  }
}
