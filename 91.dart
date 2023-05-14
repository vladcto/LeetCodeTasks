class Solution {
  int numDecodings(String s) {
    if (s.length == 1) return isDecode(s) ? 1 : 0;
    int last1 = isDecode(s[0]) ? 1 : 0;
    int last2 = 1;

    for (int i = 1; i < s.length; i++) {
      if (i > 1 && last1 == 0 && last2 == 0) return 0;
      int tmp = last1;
      last1 = (isDecode(s.substring(i, i + 1)) ? last1 : 0) +
          (isDecode(s.substring(i - 1, i + 1)) ? last2 : 0);
      last2 = tmp;
    }
    return last1;
  }

  bool isDecode(String val) {
    if (val.length == 1) {
      return val != "0";
    } else {
      int first = int.parse(val[0]);
      int second = int.parse(val[1]);
      return (first > 0 && first < 3) && (first == 2 ? second < 7 : true);
    }
  }
}
