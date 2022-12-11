class Solution {
  bool exist(List<List<String>> board, String word) {
    for (int i = 0; i < board.length; i++)
      for (int j = 0; j < board[0].length; j++)
        if (findWord(new Point(i, j), board, word, {})) return true;
    return false;
  }

  bool findWord(
      Point point, List<List<String>> board, String desiredWord, Set<Point> visited,
      [int nowI = 0]) {
    if (visited.contains(point) ||
        point.x >= board.length ||
        point.x < 0 ||
        point.y >= board[0].length ||
        point.y < 0) return false;

    if (board[point.x][point.y].codeUnitAt(0) != desiredWord.codeUnitAt(nowI)) {
      return false;
    } else if (nowI == desiredWord.length - 1) {
      return true;
    }

    visited.add(point);
    bool ans = findWord(point + [1, 0], board, desiredWord, visited, nowI + 1) ||
        findWord(point + [-1, 0], board, desiredWord, visited, nowI + 1) ||
        findWord(point + [0, 1], board, desiredWord, visited, nowI + 1) ||
        findWord(point + [0, -1], board, desiredWord, visited, nowI + 1);
    visited.remove(point);
    return ans;
  }
}

class Point {
  final int x, y;

  Point(this.x, this.y);

  Point operator +(List<int> point) =>
      new Point(this.x + point[0], this.y + point[1]);
  int get hashCode => Object.hash(x, y);
}
