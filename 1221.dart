class Solution {
  int balancedStringSplit(String s) {
    int res = 0;
    int balance = 0;
    for (int i = 0; i < s.length; i++) {
      balance += s[i] == "R" ? 1 : -1;
      if (balance == 0) res++;
    }
    return res;
  }
}
