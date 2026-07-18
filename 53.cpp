#include <limits>
#include <vector>

class Solution {
public:
  int maxSubArray(const std::vector<int> &nums) {
    auto maxSum = std::numeric_limits<int>::min();
    for (auto i = 0, li = 0, sum = 0; i < std::ranges::ssize(nums); i++) {
      sum += nums[i];
      maxSum = std::max(sum, maxSum);
      while (sum < 0)
        sum -= nums[li++];
    }
    return maxSum;
  }
};