class Solution {
  int numIslands(List<List<String>> grid) {
    int ans = 0;
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[0].length; j++) {
        if (grid[i][j] == "1") {
          ans++;
          removeIsland(grid, i, j);
        }
      }
    }
    return ans;
  }

  void removeIsland(List<List<String>> grid, int x, int y) {
    if (x < 0 || x >= grid.length) return;
    if (y < 0 || y >= grid[0].length) return;
    if (grid[x][y] == "0") return;
    grid[x][y] = "0";
    removeIsland(grid, x + 1, y);
    removeIsland(grid, x - 1, y);
    removeIsland(grid, x, y + 1);
    removeIsland(grid, x, y - 1);
  }
}
