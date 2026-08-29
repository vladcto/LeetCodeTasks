#include <cmath>

class Solution {
public:
  bool isPowerOfFour(int n) {
    auto x = log(n) / log(4);
    return std::fabs(x - std::round(x)) < 1e-9;
  }
};