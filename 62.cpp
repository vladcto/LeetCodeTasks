#include <vector>

using namespace std;

class Solution {
public:
  int uniquePaths(int m, int n) {
    vector<int> pathsSum(m * n);
    pathsSum[0] = 1;
    for (auto i = 0; i < m; i++) {
      for (auto j = 0; j < n; j++) {
        auto index = i * n + j;
        pathsSum[index] = 0;
        if (j > 0)
          pathsSum[index] += pathsSum[index - 1];
        if (i > 0)
          pathsSum[index] += pathsSum[(i - 1) * n + j];
      }
    }
    return pathsSum.back();
  }
};