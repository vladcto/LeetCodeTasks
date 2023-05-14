import 'dart:math';

class Solution {
  List<List<int>> merge(List<List<int>> intervals) {
    intervals.sort((p, e) => p[0].compareTo(e[0]));
    List<List<int>> res = [];
    int start = intervals[0][0];
    int end = intervals[0][1];
    for (int i = 0; i < intervals.length; i++) {
      final interval = intervals[i];
      if (end < interval[0]) {
        res.add([start, end]);
        start = interval[0];
        end = interval[1];
      } else {
        end = max(end, interval[1]);
      }
    }
    res.add([start, end]);
    return res;
  }
}
