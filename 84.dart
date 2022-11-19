import 'dart:math';

class Solution {
  int largestRectangleArea(List<int> heights) {
    int res = 0;
    List<int> monotIndex = []; // monotoning increasing stack
    heights.add(0);

    for (int i = 0; i < heights.length; i++) {
      if (!monotIndex.isEmpty && heights[i] < heights[monotIndex.last]) {
        int j = i;
        while (!monotIndex.isEmpty && heights[i] <= heights[monotIndex.last]) {
          j = monotIndex.removeLast();
          res = max(heights[j] * (i - j), res);
        }
        heights[j] = heights[i];
        monotIndex.add(j);
      } else {
        monotIndex.add(i);
      }
    }

    return res;
  }
}
