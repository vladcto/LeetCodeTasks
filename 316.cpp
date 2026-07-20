#include <algorithm>
#include <iterator>
#include <string>
#include <unordered_set>

class Solution {
public:
  std::string removeDuplicateLetters(const std::string& s) {
    std::string result{};

    std::unordered_set<char> uniqueLettersSet(s.begin(), s.end());
    auto initialUniqueLettersCount = std::ranges::ssize(uniqueLettersSet);
    auto lastLetterIt = s.rend();

    for (auto i = 0; i < initialUniqueLettersCount; i++) {
      std::unordered_set<char> uniqueLettersForSubsequenceSet{}, allowedChars{};
	
      for (auto it = s.rbegin(); it != lastLetterIt; it++) {
        auto currentChar = *it;
        // We've already added the char.
        if (!uniqueLettersSet.contains(currentChar)) {
          continue;
        }
        uniqueLettersForSubsequenceSet.insert(currentChar);
        if (uniqueLettersSet.size() == uniqueLettersForSubsequenceSet.size()) {
          allowedChars.insert(currentChar);
        }
      }

      auto minChar = std::ranges::min(allowedChars);
      result += minChar;
      uniqueLettersSet.erase(minChar);
      lastLetterIt = std::make_reverse_iterator(
          std::find(lastLetterIt.base(), s.end(), minChar));
    }

    return result;
  }
};