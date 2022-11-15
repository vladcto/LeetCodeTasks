class Solution {
  List<int> getRow(int rowIndex) {
    List<int> lastRow = [1];
    for (int i = 1; i <= rowIndex; i++) {
      List<int> nowRow = List.filled(i + 1, 0);
      nowRow[0] = lastRow[0];
      nowRow[i] = lastRow[i - 1]; // take last element
      for (int j = 1; j < nowRow.length - 1; j++) {
        nowRow[j] = lastRow[j - 1] + lastRow[j];
      }
      lastRow = nowRow;
    }
    return lastRow;
  }
}
