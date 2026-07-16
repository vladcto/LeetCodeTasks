

#include <unordered_map>
#include <vector>

struct ArrayEntry {
  std::vector<int> indexes;

  int pickRandom() {
    auto size = std::ranges::ssize(indexes);
    auto result = indexes[currentI % size];
    currentI = (currentI + 1) % size;
    return result;
  }

private:
  int currentI = 0;
};

class Solution {
  std::unordered_map<int, ArrayEntry> entries;

public:
  Solution(std::vector<int> &nums) {
    for (auto i = 0; i < std::ranges::ssize(nums); i++) {
      auto num = nums[i];
      entries[num].indexes.push_back(i);
    }
  }

  int pick(int target) { return entries[target].pickRandom(); }
};
