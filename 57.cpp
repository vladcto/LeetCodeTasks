#include <algorithm>
#include <vector>
using namespace std;

class Solution {
public:
  vector<vector<int>> insert(vector<vector<int>> &intervals,
                             vector<int> &newInterval) {
    auto first = find_if(intervals.begin(), intervals.end(),
                         [&](const auto &e) { return e[1] >= newInterval[0]; });
    auto last = find_if(intervals.rbegin(), intervals.rend(),
                        [&](const auto &e) { return e[0] <= newInterval[1]; });

    if (first == intervals.end()) {
      intervals.push_back(newInterval);
      return intervals;
    }

    if (last == intervals.rend()) {
      intervals.insert(intervals.begin(), newInterval);
      return intervals;
    }

    vector<vector<int>> result{};
    result.reserve(intervals.size());

    for (auto it = intervals.begin(); it != first; it++) {
      result.push_back(*it);
    }
    result.push_back(
        {min((*first)[0], newInterval[0]), max((*last)[1], newInterval[1])});
    for (auto it = last.base(); it != intervals.end(); it++) {
      result.push_back(*it);
    }

    return result;
  }
};