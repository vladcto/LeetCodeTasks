#include <algorithm>
#include <ranges>
#include <vector>

class Solution {
public:
  int maximumProduct(std::vector<int> &nums) {
    auto size = std::ranges::ssize(nums);
    std::ranges::sort(nums.begin(), nums.end());
    return std::max(nums[size - 1] * nums[size - 2] * nums[size - 3],
                    nums[size - 1] * nums[0] * nums[1]);
  }
};