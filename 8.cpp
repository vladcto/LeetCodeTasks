#include <cctype>
#include <limits>
#include <stdexcept>
#include <string>

class Solution {
  static int mul(int a, int b) {
    int r;
    if (__builtin_mul_overflow(a, b, &r))
      throw std::overflow_error("mul");
    return r;
  }

  static int add(int a, int b) {
    int r;
    if (__builtin_add_overflow(a, b, &r))
      throw std::overflow_error("add");
    return r;
  }

public:
  int myAtoi(const std::string &s) {
    auto it = s.begin();
    while (it != s.end() && *it == ' ')
      it++;
    if (it == s.end()) {
      return 0;
    }

    // Check the sign.
    int sign = 1;
    if (*it == '-') {
      sign = -1;
      it++;
    } else if (*it == '+') {
      it++;
    }

    // Skip all nulls.
    while (it != s.end() && *it == '0')
      it++;

    // Start parsing.
    auto result = 0;
    try {
      for (; it != s.end() && isdigit(*it); it++)
        result = add(mul(result, 10), (*it - '0') * sign);

    } catch (const std::overflow_error &) {
      return sign < 0 ? std::numeric_limits<int>::min()
                      : std::numeric_limits<int>::max();
    }

    return result;
  }
};