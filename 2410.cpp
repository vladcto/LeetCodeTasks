#include <algorithm>
#include <vector>

using namespace std;

class Solution {
public:
  int matchPlayersAndTrainers(vector<int> &g, vector<int> &s) {
    sort(g.begin(), g.end(), std::less());
    sort(s.begin(), s.end(), std::less());

    auto res = 0;
    for (auto it = g.begin(), itS = s.begin(); it != g.end(); it++) {
      while (itS != s.end() && *it > *itS)
        itS++;
      if (itS == s.end())
        break;
      itS++;
      res += 1;
    }
    return res;
  }
};