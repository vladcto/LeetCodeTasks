#include <algorithm>
#include <numeric>
#include <vector>
using namespace std;

class Solution {
public:
  int findGCD(const vector<int> &nums) {
    return gcd(ranges::max(nums), ranges::min(nums));
  }
};