class Solution {
  bool isValidSudoku(List<List<String>> board) {
    // check squares
    for (int i = 0; i < 9; i++) {
      int row = (i ~/ 3) * 3, column = (i % 3) * 3;
      if (!checkSquare(row, column, board)) return false;
    }
    // check rows
    for (int i = 0; i < 9; i++) {
      final Set<String> visited = {};
      for (int j = 0; j < 9; j++) {
        if (visited.contains(board[i][j])) return false;
        if (board[i][j] != ".") visited.add(board[i][j]);
      }
    }
    // check columns
    for (int i = 0; i < 9; i++) {
      final Set<String> visited = {};
      for (int j = 0; j < 9; j++) {
        if (visited.contains(board[j][i])) return false;
        if (board[j][i] != ".") visited.add(board[j][i]);
      }
    }

    return true;
  }

  bool checkSquare(int row, int column, List<List<String>> board) {
    final Set<String> visited = {};
    for (int i = row; i < row + 3; i++) {
      for (int j = column; j < column + 3; j++) {
        if (visited.contains(board[i][j])) return false;
        if (board[i][j] != ".") visited.add(board[i][j]);
      }
    }
    return true;
  }
}
