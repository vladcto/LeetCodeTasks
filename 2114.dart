import 'dart:math';

class Solution {
  int mostWordsFound(List<String> sentences) {
    return sentences
        .map((e) => e.split(" ").length)
        .reduce((p, e) => max(p, e));
  }
}
