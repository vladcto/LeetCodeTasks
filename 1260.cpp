#include <vector>

using namespace std;

class Solution {
public:
  vector<vector<int>> shiftGrid(const vector<vector<int>> &grid, int k) {
    auto m = ranges::ssize(grid), n = ranges::ssize(grid[0]);
    auto size = m * n;
    auto result = vector<vector<int>>(m, vector<int>(n, 0));

    for (auto i = 0; i < m; i++) {
      for (auto j = 0; j < n; j++) {
        auto newPos = (size * k + (i * n + j) - k) % size;
        result[i][j] = grid[newPos / n][newPos % n];
      }
    }

    return result;
  }
};