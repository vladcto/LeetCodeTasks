class Solution {
  static int plusCode = "+".codeUnitAt(0);

  int finalValueAfterOperations(List<String> operations) {
    int x = 0;
    for (var operation in operations) {
      x += operation.codeUnitAt(1) == plusCode ? 1 : -1;
    }
    return x;
  }
}
