class Solution {
  String countAndSay(int n) {
    if (n == 1) return "1";

    String prev = countAndSay(n - 1);
    String res = "", digit = prev[0];
    int count = 1;
    for (int i = 1; i < prev.length; i++) {
      if (prev[i] != digit) {
        res += "$count$digit";
        count = 0;
        digit = prev[i];
      }
      count++;
    }
    res += "$count$digit";
    return res;
  }
}
