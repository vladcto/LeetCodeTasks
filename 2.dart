class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    if (l1 == null && l2 == null) {
      return null;
    }

    int value = (l1?.val ?? 0) + (l2?.val ?? 0);
    int remainder = value ~/ 10;
    value %= 10;

    final remainNode = l1?.next ?? l2?.next;
    final node = new ListNode(value);

    if (remainNode == null) {
      if (remainder != 0) {
        node.next = ListNode(remainder);
      }
    } else {
      remainNode.val += remainder;
      node.next = addTwoNumbers(l1?.next, l2?.next);
    }

    return node;
  }
}

class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}
