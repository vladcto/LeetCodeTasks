class Solution {
  static const int volumeEdge = 10000;

  String categorizeBox(int length, int width, int height, int mass) {
    bool bulky = length * width * height >= 1000000000 ||
        length >= volumeEdge ||
        width >= volumeEdge ||
        height >= volumeEdge;
    bool heavy = mass >= 100;

    if (bulky && heavy) {
      return "Both";
    } else if (bulky) {
      return "Bulky";
    } else if (heavy) {
      return "Heavy";
    } else {
      return "Neither";
    }
  }
}
