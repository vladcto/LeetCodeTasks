#include <iterator>
#include <vector>

using namespace std;

struct ListNode {
  int val;
  ListNode *next;
  ListNode() : val(0), next(nullptr) {}
  ListNode(int x) : val(x), next(nullptr) {}
  ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution {
  vector<int> digits(ListNode *node) {
    vector<int> result;
    result.reserve(100);
    for (; node; node = node->next)
      result.push_back(node->val);
    return result;
  }

public:
  ListNode *addTwoNumbers(ListNode *l1, ListNode *l2) {
    auto array1 = digits(l1), array2 = digits(l2);

    ListNode *prevHead = nullptr;
    auto carry = 0;
    auto it1 = array1.rbegin(), it2 = array2.rbegin();

    while (it1 != array1.rend() || it2 != array2.rend() || carry != 0) {
      auto sum = carry;

      if (it1 != array1.rend())
        sum += *it1++;
      if (it2 != array2.rend())
        sum += *it2++;

      prevHead = new ListNode(sum % 10, prevHead);
      carry = sum / 10;
    }

    return prevHead;
  }
};