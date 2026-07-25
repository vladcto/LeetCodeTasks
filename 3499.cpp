#include <string>
#include <utility>

class Solution {
public:
  int maxActiveSectionsAfterTrade(std::string &s) {
    auto countOfOnes = 0, maxTwoSubsequentZeros = 0;
    auto currentZeros = 0, previousZeros = 0;

    for (auto it = s.begin(); it <= s.end(); it++) {
      if (*it == '1' || it == s.end()) {
        countOfOnes += 1;
        if (currentZeros != 0) {
          if (previousZeros != 0) {
            maxTwoSubsequentZeros =
                std::max(maxTwoSubsequentZeros, currentZeros + previousZeros);
          }
          previousZeros = std::exchange(currentZeros, 0);
        }
      } else {
        currentZeros += 1;
      }
    }

    return (countOfOnes - 1) + maxTwoSubsequentZeros;
  }
};