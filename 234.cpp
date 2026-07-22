#include <vector>
struct ListNode {
  int val;
  ListNode *next;
  ListNode() : val(0), next(nullptr) {}
  ListNode(int x) : val(x), next(nullptr) {}
  ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution {
public:
  bool isPalindrome(const ListNode *const head) {
    std::vector<int> array{};

    for (auto it = head; it != nullptr; it = it->next) {
      array.push_back(it->val);
    }

    auto halfSize = std::ranges::ssize(array) / 2;
    return std::equal(array.begin(), array.begin() + halfSize, array.rbegin());
  }
};