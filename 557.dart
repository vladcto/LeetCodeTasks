class Solution {
  String reverseWords(String s) {
    var words = s.split(" ");
    var wordsAsList = words.map((e) => e.split(""));
    for (var wordList in wordsAsList) {
      reverse(0, wordList.length - 1, wordList);
    }
    return wordsAsList.map((e) => e.join()).join(" ").toString();
  }

  void reverse(int start, int end, List ls) {
    int li = start, ri = end;
    while (li < ri) {
      var tmp = ls[li];
      ls[li] = ls[ri];
      ls[ri] = tmp;
      li++;
      ri--;
    }
  }
}
