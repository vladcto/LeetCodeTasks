struct ListNode {
  int val;
  ListNode *next;
  ListNode() : val(0), next(nullptr) {}
  ListNode(int x) : val(x), next(nullptr) {}
  ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution {
public:
  static int val(ListNode *node) { return node ? node->val : 0; }

  static ListNode *next(ListNode *node) { return node ? node->next : nullptr; }

  ListNode *addTwoNumbers(ListNode *l1, ListNode *l2, int carry = 0) {
    if (!l1 && !l2 && !carry)
      return nullptr;

    auto sum = val(l1) + val(l2) + carry;
    auto *reusedNode = l1 ?: l2 ?: new ListNode;

    reusedNode->val = sum % 10;
    reusedNode->next = addTwoNumbers(next(l1), next(l2), sum / 10);
    return reusedNode;
  }
};