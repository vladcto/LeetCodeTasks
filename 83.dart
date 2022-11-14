class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    if (head == null) return null;
    ListNode curNode = head, res = curNode;
    head = head.next;
    while (head != null) {
      if (head.val != curNode.val) curNode = curNode.next = head;

      head = head.next;
    }
    curNode.next = null;
    return res;
  }
}
