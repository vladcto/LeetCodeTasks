class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head, [ListNode? parent = null]) {
    var next = head!.next;
    head.next = parent;
    return next == null ? null : reverseList(next, head);
  }
}
