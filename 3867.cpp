#include <algorithm>
#include <numeric>
#include <ranges>
#include <vector>

using namespace std;

class Solution {

  vector<int> createPrefixGcd(const vector<int> &nums) {
    vector<int> prefixGcd{};
    prefixGcd.reserve(ranges::ssize(nums));
    auto maxNum = 0;

    for (auto num : nums) {
      maxNum = max(num, maxNum);
      prefixGcd.push_back(gcd(num, maxNum));
    }

    ranges::sort(prefixGcd);
    return prefixGcd;
  }

public:
  long long gcdSum(const vector<int> &nums) {
    long long result = 0;
    const auto &prefixGcd = createPrefixGcd(nums);

    auto gcdVectorSize = ranges::ssize(prefixGcd);
    for (auto i = 0; i < gcdVectorSize / 2; i++) {
      result += gcd(prefixGcd[i], prefixGcd[gcdVectorSize - i - 1]);
    }

    return result;
  }
};