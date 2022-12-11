import 'dart:math' show max, min;

class Solution {
  int maxArea(List<int> height) {
    int li = 0, ri = height.length - 1;
    int maxArea = 0;
    while (li < ri) {
      maxArea = max(maxArea, (ri - li) * min(height[li], height[ri]));
      height[li] < height[ri] ? li++ : ri--;
    }
    return maxArea;
  }
}
