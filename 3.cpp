#include <algorithm>
#include <ranges>
#include <string>
#include <unordered_set>

class Solution {
public:
  int lengthOfLongestSubstring(const std::string s) {
    std::unordered_set<char> substring;
    auto maxSize = 0;
    auto i = 0, j = 0;

    while (i < std::ranges::ssize(s)) {
      auto current = s[i];

      if (substring.contains(current)) {
        maxSize = std::max(maxSize, i - j);
		
        while (s[j] != current)
          substring.erase(s[j++]);
        substring.erase(s[j++]);
      }

      substring.insert(current);
      i++;
    }

    return std::max(maxSize, i - j);
  }
};