class Solution {
  String convertToTitle(int columnNumber) {
    String res = "";
    while (columnNumber > 0) {
      columnNumber -= 1;
      int symbol = (columnNumber) % 26;
      res = String.fromCharCode("A".codeUnitAt(0) + symbol) + res;
      columnNumber ~/= 26;
    }
    return res;
  }
}
