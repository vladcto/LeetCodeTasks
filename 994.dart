class Solution {
  int orangesRotting(List<List<int>> grid) {
    List<List<int>> rotOrangeQueue = [];
    for (int i = 0; i < grid.length; i++)
      for (int j = 0; j < grid[0].length; j++)
        if (grid[i][j] == 2) rotOrangeQueue.add([i, j]);

    rotOrangeQueue.add([]);
    int minutes = 0;
    while (rotOrangeQueue.length > 1) {
      var nowOrange = rotOrangeQueue.removeAt(0);
      if (nowOrange.isEmpty) {
        minutes++;
        rotOrangeQueue.add([]);
        continue;
      }
      int x = nowOrange[0], y = nowOrange[1];
      grid[x][y] = 2;

      var rotOrangeFunc = (int i, int j) {
        try {
          if (grid[i][j] == 1) {
            grid[i][j] = 2;
            rotOrangeQueue.add([i, j]);
          }
        } on RangeError {}
      };

      rotOrangeFunc(x + 1, y);
      rotOrangeFunc(x - 1, y);
      rotOrangeFunc(x, y + 1);
      rotOrangeFunc(x, y - 1);
    }

    return grid.any((row) => row.any((orange) => orange == 1)) ? -1 : minutes;
  }
}
