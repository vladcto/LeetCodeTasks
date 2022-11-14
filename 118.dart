class Solution {
  List<List<int>> generate(int numRows) {
    List<List<int>> pascalTriangle = [
      [1]
    ];

    for (int i = 0; i < numRows - 1; i++) {
      List<int> nowRow = List.filled(i + 2, 0);
      nowRow[0] = pascalTriangle[i][0];
      nowRow[i + 1] = pascalTriangle[i][i]; // take last element
      for (int j = 1; j < nowRow.length - 1; j++) {
        nowRow[j] = pascalTriangle[i][j - 1] + pascalTriangle[i][j];
      }
      pascalTriangle.add(nowRow);
    }
    return pascalTriangle;
  }
}
