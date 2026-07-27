#include <algorithm>
#include <vector>

class Solution {
public:
  int maxProduct(std::vector<int> &nums) {
    std::sort(nums.begin(), nums.end());

    return (nums.back() - 1) * (nums.at(nums.size() - 2)) - 1;
  }
};
