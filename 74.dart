class Solution {
  bool searchMatrix(List<List<int>> matrix, int target) {
    int ri = matrix.length * matrix[0].length - 1;
    int li = 0;
    while (li <= ri) {
      int center = (li + ri) ~/ 2;
      if (getElement(center, matrix) > target) {
        ri = center - 1;
      } else {
        li = center + 1;
      }
    }
    return getElement((li + ri) ~/ 2, matrix) == target;
  }

  int getElement(int iSize, List<List<int>> matrix) {
    int width = matrix[0].length;
    return matrix[iSize ~/ width][iSize % width];
  }
}
