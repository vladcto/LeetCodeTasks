class Solution {
  int findMinArrowShots(List<List<int>> points) {
    points.sort((a, b) => a[1].compareTo(b[1]));
    int arrows = 1, maxArrow = points[0][1];
    for (int i = 0; i < points.length; i++) {
      if (points[i][0] > maxArrow) {
        arrows++;
        maxArrow = points[i][1];
      }
    }
    return arrows;
  }
}
