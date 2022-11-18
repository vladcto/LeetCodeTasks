import 'dart:math' show max, min;

class Solution {
  int computeArea(
      int ax1, int ay1, int ax2, int ay2, int bx1, int by1, int bx2, int by2) {
    final List<int> b1p1 = [ax1, ay1];
    final List<int> b1p2 = [ax2, ay2];
    final List<int> b2p1 = [bx1, by1];
    final List<int> b2p2 = [bx2, by2];

    int squareBox1 = calculateSqr(b1p1, b1p2);
    int squareBox2 = calculateSqr(b2p1, b2p2);
    final List<int> overlapedP1 = [
      max(b1p1[0], b2p1[0]),
      max(b1p1[1], b2p1[1])
    ];
    final List<int> overlapedP2 = [
      min(b1p2[0], b2p2[0]),
      min(b1p2[1], b2p2[1])
    ];
    return squareBox1 + squareBox2 - calculateSqr(overlapedP1, overlapedP2);
  }

  int calculateSqr(List<int> corner1, List<int> corner2) {
    return max(corner2[1] - corner1[1], 0) * max(corner2[0] - corner1[0], 0);
  }
}
