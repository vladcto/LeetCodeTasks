class Solution {
  String reverseWords(String s) {
    return s
        .split(new RegExp("\\s{1,}"))
        .reversed
        .where((element) => element != " ")
        .join(" ");
  }
}
