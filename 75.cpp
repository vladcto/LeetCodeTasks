#include "vector"
#include <map>

class Solution {
public:
  void sortColors(std::vector<int> &nums) {
    std::pmr::map<int, int> count{{0, 0}, {1, 0}, {2, 0}};

    for (auto it = nums.begin(); it != nums.end(); it++) {
      count[*it]++;
    }

    auto colorPair = count.begin();
    for (auto it = nums.begin(); it != nums.end(); it++) {
      while (colorPair->second == 0)
        colorPair++;

      (*it) = colorPair->first;
      colorPair->second--;
    }
  }
};