#include <ranges>
#include <unordered_map>
#include <vector>

using namespace std;

class Solution {
public:
  vector<int> twoSum(const vector<int> &nums, int target) {
    unordered_map<int, int> indexForNum;
    for (auto i = 0; i < ranges::ssize(nums); i++) {
      auto num = nums[i];
      if (indexForNum.contains(target - num)) {
        return {indexForNum[target - num], static_cast<int>(i)};
      }
      indexForNum[num] = i;
    }
    unreachable();
  }
};