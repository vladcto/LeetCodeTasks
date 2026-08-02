#include <algorithm>
#include <numeric>
#include <vector>

class Solution {
public:
  bool canPartition(std::vector<int> &nums) {
    std::sort(nums.begin(), nums.end());

    auto sum = std::accumulate(nums.begin(), nums.end(), 0);
    if (sum % 2 != 0) {
      return false;
    }
    auto halfSum = sum / 2;

    std::vector<bool> reachableSums(halfSum + 1, false);
    reachableSums[0] = true;
    for (auto it = nums.begin(); it != nums.end() && *it <= halfSum; it++) {
      auto num = *it;
      for (int i = halfSum; i >= num; i--) {
        reachableSums[i] = reachableSums[i] || reachableSums[i - num];
      }
    }

    return reachableSums.back();
  }
};