#include <limits>
#include <vector>

using namespace std;

class Solution {
public:
  int minSubArrayLen(int target, const vector<int> &nums) {
    auto minLen = numeric_limits<int>::max();

    for (auto ri = 0, li = 0, currentSum = 0; ri < ranges::ssize(nums); ri++) {
      currentSum += nums[ri];
      if (currentSum >= target) {
        while (currentSum >= target)
          currentSum -= nums[li++];
        minLen = min(minLen, ri - li + 2);
      }
    }

    return minLen == numeric_limits<int>::max() ? 0 : minLen;
  }
};