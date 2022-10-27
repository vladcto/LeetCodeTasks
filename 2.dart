/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? nodeRemainder;
    if (l1 == null && l2 == null) {
      return null;
    }
    if (l1?.next != null) {
      nodeRemainder = l1!.next;
    } else if (l2?.next != null) {
      nodeRemainder = l2!.next;
    }

    int value = (l1?.val ?? 0) + (l2?.val ?? 0);
    int remainder = value ~/ 10;
    value %= 10;

    ListNode node = new ListNode();
    node.val = value;
    if (nodeRemainder == null) {
      if (remainder != 0) {
        ListNode lastNode = ListNode();
        lastNode.val = remainder;
        node.next = lastNode;
      }
    } else {
      nodeRemainder.val += remainder;
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
