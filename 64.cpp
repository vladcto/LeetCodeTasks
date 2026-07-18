#include <limits>
#include <vector>

using namespace std;

class Solution {
public:
  int minPathSum(vector<vector<int>> &grid) {
    auto innerSize = ranges::ssize(grid[0]);
    // Use the input vector for DP
    for (auto i = 0; i < ranges::ssize(grid); i++) {
      for (auto j = 0; j < innerSize; j++) {
        if (i == 0 && j == 0)
          continue;

        auto step = grid[i][j];
        grid[i][j] =
            step + min(i > 0 ? grid[i - 1][j] : numeric_limits<int>::max(),
                       j > 0 ? grid[i][j - 1] : numeric_limits<int>::max());
      }
    }
    return grid.back().back();
  }
};