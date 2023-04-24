class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head, [ListNode? parent = null]) {
    if (head == null) return head;
    if (head.next == null) return head..next = parent;
    return reverseList(head.next, head..next = parent);
  }
}
