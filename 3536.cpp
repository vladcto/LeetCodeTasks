#include <utility>

class Solution {
public:
  int maxProduct(int n) {
    auto max1 = 0, max2 = 0;
    while (n > 0) {
      auto digit = n % 10;
      if (digit > max2) {
        max2 = digit > max1 ? std::exchange(max1, digit) : digit;
      }
      n /= 10;
    }
    return max1 * max2;
  }
};