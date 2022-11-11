class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    int nodesLen = 0;
    for (ListNode? curNode = head; curNode != null; curNode = curNode.next)
      nodesLen++;

    if (n == nodesLen) {
      return head?.next;
    }

    int indexToDel = nodesLen - n;
    ListNode? curNode = head;
    for (int i = 1; i < indexToDel; i++) {
      curNode = curNode!.next;
    }
    curNode!.next = curNode.next?.next;
    return head;
  }
}
