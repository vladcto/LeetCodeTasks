#include <algorithm>
#include <ranges>
#include <unordered_map>
#include <vector>

using namespace std;

class Solution {
public:
  vector<int> arrayRankTransform(vector<int> &arr) {
    auto sortedNums = arr;
    std::sort(sortedNums.begin(), sortedNums.end());
    unordered_map<int, int> ranks{};

    for (auto i = 0, rank = 1; i < ranges::ssize(arr); i++) {
      auto num = sortedNums[i];
      if (!ranks.contains(num)) {
        ranks[num] = rank++;
      }
    }

    for (auto it = arr.begin(); it < arr.end(); it++) {
      *it = ranks[*it];
    }

    return arr;
  }
};