class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeNodes(ListNode? head) {
    if (head == null) return null;
    ListNode tmpNode = head.next!;

    for (var node = head.next; node != null; node = node.next) {
      if (node == tmpNode) continue;
      if (node.val == 0) {
        tmpNode.next = node.next;
        if (node.next != null) tmpNode = node.next!;
      } else {
        tmpNode.val += node.val;
      }
    }

    return head.next;
  }
}
