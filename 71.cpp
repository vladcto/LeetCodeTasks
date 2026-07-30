#include <ranges>
#include <string>
#include <vector>

class Solution {
public:
  std::string simplifyPath(std::string path) {
    std::vector<std::string_view> stack{};

    for (auto subpathValue : path | std::views::split('/')) {
      std::string_view subpath{subpathValue};
      if (subpath.empty() || subpath == ".") {
        continue;
      } else if (subpath == "..") {
        if (!stack.empty()) {
          stack.pop_back();
        }
      } else {
        stack.push_back(subpath);
      }
    }

    if (stack.empty()) {
      return "/";
    }

    std::string result;
    for (const auto &x : stack) {
      result += '/';
      result += x;
    }
    return result;
  }
};