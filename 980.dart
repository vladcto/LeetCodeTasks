class Solution {
  int uniquePathsIII(List<List<int>> grid) {
    int emptyCells = 1;
    List<int> target = [];
    List<int> source = [];
    for (int i = 0; i < grid.length; i++)
      for (int j = 0; j < grid[0].length; j++) {
        if (grid[i][j] == 1) source = [i, j];
        if (grid[i][j] == 2) target = [i, j];
        if (grid[i][j] == 0) emptyCells++;
      }
    return dfs(grid, source, target, emptyCells);
  }

  int dfs(List<List<int>> grid, List<int> source, List<int> target, int emptyCells) {
    int x = source[0], y = source[1];
    if (!checkValidIndex(x, grid) ||
        !checkValidIndex(y, grid[0]) ||
        grid[x][y] == -1) {
      return 0;
    }
    if (grid[x][y] == 2) {
      return emptyCells == 0 ? 1 : 0;
    }

    grid[x][y] = -1;
    emptyCells--;
    int res = dfs(grid, [x + 1, y], target, emptyCells) +
        dfs(grid, [x - 1, y], target, emptyCells) +
        dfs(grid, [x, y + 1], target, emptyCells) +
        dfs(grid, [x, y - 1], target, emptyCells);
    grid[x][y] = 0;
    return res;
  }

  bool checkValidIndex(int index, List array) {
    return array.length > index && index >= 0;
  }
}
