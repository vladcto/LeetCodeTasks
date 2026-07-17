#include <algorithm>
#include <ranges>
#include <vector>

using namespace std;

class Solution {
public:
  vector<int> gcdValues(const vector<int> &nums,
                        const vector<long long> &queries) {
    auto maxNumber = ranges::max(nums);
    vector<int> frequencies(maxNumber + 1);
    for (auto num : nums) {
      frequencies[num]++;
    }

    vector<int> multiplesCount(maxNumber + 1);
    for (auto i = 1; i <= maxNumber; i++) {
      multiplesCount[i] = frequencies[i];
      for (auto j = i * 2; j <= maxNumber; j += i) {
        multiplesCount[i] += frequencies[j];
      }
    }

    vector<long long> pairsDivisibleBy(maxNumber + 1);
    for (auto i = 1; i <= maxNumber; i++) {
      pairsDivisibleBy[i] =
          (long long)multiplesCount[i] * (multiplesCount[i] - 1) / 2;
    }

    vector<long long> gcdPairs(maxNumber + 1);
    for (auto i = maxNumber; i > 0; i--) {
      gcdPairs[i] = pairsDivisibleBy[i];
      for (auto j = i * 2; j <= maxNumber; j += i) {
        gcdPairs[i] -= gcdPairs[j];
      }
    }

    vector<long long> gcdPrefixSum(maxNumber + 1);
    for (auto i = 1; i <= maxNumber; i++) {
      gcdPrefixSum[i] = gcdPairs[i] + gcdPrefixSum[i - 1];
    }

    auto queriesSize = ranges::ssize(queries);
    vector<int> answer(queriesSize);
    for (auto i = 0; i < queriesSize; i++) {
      auto targetIndex = queries[i];
      auto it = lower_bound(gcdPrefixSum.begin() + 1, gcdPrefixSum.end(),
                            targetIndex + 1);
      answer[i] = it - gcdPrefixSum.begin();
    }
    return answer;
  }
};