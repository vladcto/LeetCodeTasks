import 'dart:math' show max;

class Solution {
  int maxAreaOfIsland(List<List<int>> grid) {
    int maxIsland = 0;
    for (int i = 0; i < grid.length; i++)
      for (int j = 0; j < grid[i].length; j++) {
        if (grid[i][j] == 1)
          maxIsland = max(delIsland(grid, [i, j]), maxIsland);
      }
    return maxIsland;
  }

  //dfs
  int delIsland(List<List<int>> grid, List<int> coords) {
    if (coords[0] >= grid.length ||
        coords[0] < 0 ||
        coords[1] >= grid[0].length ||
        coords[1] < 0 ||
        grid[coords[0]][coords[1]] == 0) return 0;

    grid[coords[0]][coords[1]] = 0;
    return 1 +
        delIsland(grid, [coords[0], coords[1] + 1]) +
        delIsland(grid, [coords[0], coords[1] - 1]) +
        delIsland(grid, [coords[0] + 1, coords[1]]) +
        delIsland(grid, [coords[0] - 1, coords[1]]);
  }
}
