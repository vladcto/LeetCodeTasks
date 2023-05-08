class Solution {
  String longestPalindrome(String s) {
    String res = "";
    for (double i = 0; i < s.length; i += .5) {
      // find maximum palindrom for this center.
      int j = 0;
      while (i.floor() - j >= 0 && i.ceil() + j < s.length) {
        if (s[i.ceil() + j] != s[i.floor() - j]) break;
        j++;
      }
      j--;
      // calculate res string
      if (j < 0) continue;
      if (res.length < 1 + i.ceil() - i.floor() + 2 * j)
        res = s.substring(i.floor() - j, i.ceil() + j + 1);
    }
    return res;
  }
}
