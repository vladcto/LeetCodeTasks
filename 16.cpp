#include <cstdlib>
#include <limits>
#include <vector>

class Solution {
public:
  int threeSumClosest(const std::vector<int> &nums, int target) {
    auto closestDiff = std::numeric_limits<int>::max();
    auto closestSum = 0;

    auto size = std::ranges::ssize(nums);
    for (auto i = 0; i < size - 2; i++) {
      for (auto j = i + 1; j < size - 1; j++) {
        for (auto z = j + 1; z < size; z++) {
          auto sum = nums[i] + nums[j] + nums[z];
          auto diff = abs(target - sum);
          if (diff < closestDiff) {
            closestDiff = diff;
            closestSum = sum;
          }
        }
      }
    }

    return closestSum;
  }
};