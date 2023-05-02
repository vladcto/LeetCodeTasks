import 'dart:math';

class Solution {
  List<int> countPoints(List<List<int>> points, List<List<int>> queries) {
    List<int> res = List.filled(queries.length, 0);
    for (int i = 0; i < queries.length; i++) {
      int sum = 0;
      for (var point in points)
        if (circleContainPoint(queries[i], point)) sum += 1;
      res[i] = sum;
    }
    return res;
  }

  bool circleContainPoint(List<int> circleXYR, List<int> point) {
    num distance =
        pow(point[0] - circleXYR[0], 2) + pow(point[1] - circleXYR[1], 2);
    return distance <= pow(circleXYR[2], 2);
  }
}
