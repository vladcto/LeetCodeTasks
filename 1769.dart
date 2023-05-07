class Solution {
  List<int> minOperations(String boxes) {
    List<int> res = List.filled(boxes.length, 0);
    for (int i = 0; i < boxes.length; i++) {
      if (boxes[i] != "1") continue;
      for (int j = 0; j < boxes.length; j++) {
        res[j] += (i - j).abs();
      }
    }
    return res;
  }
}
