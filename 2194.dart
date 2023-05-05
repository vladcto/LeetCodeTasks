class Solution {
  List<String> cellsInRange(String s) {
    int startColumnCode = s[0].codeUnitAt(0);
    int startRow = int.parse(s[1]);
    int endColumnCode = s[3].codeUnitAt(0);
    int endRow = int.parse(s[4]);

    final res = <String>[];
    for (int columnCode = startColumnCode;
        columnCode <= endColumnCode;
        columnCode++) {
      final columnChar = String.fromCharCode(columnCode);
      for (int row = startRow; row <= endRow; row++) {
        res.add("$columnChar$row");
      }
    }
    return res;
  }
}
