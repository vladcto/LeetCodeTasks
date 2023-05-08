class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    final start = [0, 0];
    final end = [matrix.length - 1, matrix[0].length - 1];
    List<int> res = [];

    while (checkValidCorners(start, end)) {
      // top
      for (int i = start[1]; i <= end[1]; i++) res.add(matrix[start[0]][i]);
      start[0] += 1;
      // right
      for (int i = start[0]; i <= end[0]; i++) res.add(matrix[i][end[1]]);
      end[1] -= 1;
      // bottom
      if (!checkValidCorners(start, end)) break;
      for (int i = end[1]; i >= start[1]; i--) res.add(matrix[end[0]][i]);
      end[0] -= 1;
      // left
      for (int i = end[0]; i >= start[0]; i--) res.add(matrix[i][start[1]]);
      start[1] += 1;
    }

    return res;
  }

  bool checkValidCorners(List<int> start, List<int> end) {
    return start[0] <= end[0] && start[1] <= end[1];
  }
}
