class Solution {
  int nearestExit(List<List<String>> maze, List<int> enter) {
    List<List<int>> toVisit = [];
    int count = 0;

    if (enter[0] != 0) toVisit.add([enter[0] - 1, enter[1]]);
    if (enter[0] != maze.length - 1) toVisit.add([enter[0] + 1, enter[1]]);
    if (enter[1] != 0) toVisit.add([enter[0], enter[1] - 1]);
    if (enter[1] != maze[0].length - 1) toVisit.add([enter[0], enter[1] + 1]);
    maze[enter[0]][enter[1]] = "+";

    while (!toVisit.isEmpty) {
      int stackLen = toVisit.length;

      for (int i = 0; i < stackLen; i++) {
        List<int> point = toVisit.removeAt(0);
        int x = point[0], y = point[1];
        try {
          if (maze[x][y] == ".") {
            maze[x][y] = "+";
            toVisit.add([x + 1, y]);
            toVisit.add([x - 1, y]);
            toVisit.add([x, y + 1]);
            toVisit.add([x, y - 1]);
          }
        } on RangeError {
          return count;
        }
      }

      count++;
    }
    return -1;
  }
}
