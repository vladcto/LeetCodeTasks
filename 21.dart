class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode? curNode, headNode;
    if (list1 != null && list1.val < (list2?.val ?? 101)) {
      curNode = list1;
      list1 = list1.next;
    } else if (list2 != null) {
      curNode = list2;
      list2 = list2.next;
    }
    headNode = curNode;

    while (list1 != null || list2 != null) {
      if (list1 != null && list1.val < (list2?.val ?? 101)) {
        curNode!.next = list1;
        list1 = list1.next;
      } else {
        curNode!.next = list2;
        list2 = list2!.next;
      }
      curNode = curNode.next;
    }

    return headNode;
  }
}
