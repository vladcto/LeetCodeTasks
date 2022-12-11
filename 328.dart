class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? oddEvenList(ListNode? head) {
    if (head == null || head.next == null) return head;
    ListNode parentEvenNode = head.next!;
    ListNode oddNode = head;
    ListNode evenNode = head.next!;
    while (evenNode.next?.next != null) {
      var nextOdd = evenNode.next!;
      var nextEven = nextOdd.next!;
      oddNode.next = nextOdd;
      evenNode.next = nextEven;
      oddNode = nextOdd;
      evenNode = nextEven;
    }

    if (evenNode.next != null) {
      oddNode.next = evenNode.next!;
      oddNode = oddNode.next!;
      evenNode.next = null;
    }
    oddNode.next = parentEvenNode;
    return head;
  }
}
