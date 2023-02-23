import 'dart:math';

class Solution {
  int maxPoints(List<List<int>> points) {
    if (points.length < 3) return points.length;

    int result = 0;
    for (int i = 0; i < points.length; i++) {
      var atanDict = <double, int>{};
      var v1 = [points[i][0], points[i][1]];

      for (int j = 0; j < points.length; j++) {
        if (i == j) continue;
        var v2 = [points[j][0], points[j][1]];
        double atan = atan2(v2[0] - v1[0], v2[1] - v1[1]);
        atanDict[atan] = atanDict.putIfAbsent(atan, () => 0) + 1;
      }

      int maxPoints =
          atanDict.values.reduce((value, element) => max(value, element)) + 1;
      result = max(maxPoints, result);
    }
    return result;
  }
}
