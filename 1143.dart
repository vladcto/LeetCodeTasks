import 'dart:math';

class Solution {
  int longestCommonSubsequence(String text1, String text2) {
    List<List<int>> res =
        List.generate(text1.length, (_) => List.filled(text2.length, 0));
    for (int i = 0; i < text1.length; i++) {
      for (int j = 0; j < text2.length; j++) {
        if (text1[i] == text2[j]) {
          if (i == 0 || j == 0)
            res[i][j] = 1;
          else
            res[i][j] = res[i - 1][j - 1] + 1;
          continue;
        }
        if (i > 0) res[i][j] = max(res[i][j], res[i - 1][j]);
        if (j > 0) res[i][j] = max(res[i][j], res[i][j - 1]);
      }
    }
    for (var tmp in res) print(tmp);
    return res.last.last;
  }
}
