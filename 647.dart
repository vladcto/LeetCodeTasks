class Solution {
  int countSubstrings(String s) {
    int res = 0;
    for (double i = 0; i < s.length; i += 0.5) {
      for (int j = 0; i.floor() - j >= 0 && i.ceil() + j < s.length; j++) {
        if (s[i.ceil() + j] == s[i.floor() - j])
          res++;
        else
          break;
      }
    }
    return res;
  }
}
