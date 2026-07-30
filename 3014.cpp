#include <algorithm>
#include <string>
#include <unordered_map>
#include <vector>

class Solution {
public:
  int minimumPushes(std::string word) {
    auto countPushes = 0;

    std::unordered_map<char, int> frequency{};
    for (auto letter : word) {
      frequency[letter]++;
    }

    std::vector<std::pair<char, int>> sortedFrequency(frequency.begin(),
                                                      frequency.end());
    std::ranges::sort(sortedFrequency, std::greater{},
                      &std::pair<char, int>::second);

    for (auto i = 0u; i < sortedFrequency.size(); i++) {
      auto count = sortedFrequency[i].second;
      countPushes += count * (1 + i / 8);
    }

    return countPushes;
  }
};