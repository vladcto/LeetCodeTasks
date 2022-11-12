class Solution {
  List<List<int>> floodFill(List<List<int>> image, int sr, int sc, int color) {
    floodColor(image, sr, sc, image[sr][sc], color);
    return image;
  }

  void floodColor(
      List<List<int>> image, int sr, int sc, int startColor, int fillColor) {
    if (sr < 0 ||
        sc < 0 ||
        image.length < sr ||
        image[0].length < sc ||
        image[sr][sc] != startColor) return;
    image[sr][sc] = fillColor;
    floodColor(image, sr + 1, sc, startColor, fillColor);
    floodColor(image, sr - 1, sc, startColor, fillColor);
    floodColor(image, sr, sc, startColor, fillColor + 1);
    floodColor(image, sr, sc, startColor, fillColor - 1);
  }
}
