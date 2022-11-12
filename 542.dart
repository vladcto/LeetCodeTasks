import 'dart:math' show min;

class Solution {
  List<List<int>> updateMatrix(List<List<int>> mat) {
    for (int i = 0; i < mat.length; i++)
      for (int j = 0; j < mat[0].length; j++)
        if (mat[i][j] == 1) mat[i][j] = 100000;

    for (int i = 0; i < mat.length; i++) {
      for (int j = 1; j < mat[0].length; j++) {
        mat[i][j] = min(mat[i][j], mat[i][j - 1] + 1);
      }
    }
    for (int i = 0; i < mat.length; i++) {
      for (int j = mat[0].length - 2; j >= 0; j--) {
        mat[i][j] = min(mat[i][j], mat[i][j + 1] + 1);
      }
    }
    for (int j = 0; j < mat[0].length; j++) {
      for (int i = 1; i < mat.length; i++) {
        mat[i][j] = min(mat[i][j], mat[i - 1][j] + 1);
      }
    }
    for (int j = 0; j < mat[0].length; j++) {
      for (int i = mat.length - 2; i >= 0; i--) {
        mat[i][j] = min(mat[i][j], mat[i + 1][j] + 1);
      }
    }
    return mat;
  }
}
