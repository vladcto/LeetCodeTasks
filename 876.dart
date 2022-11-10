class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    int nodesLen = 1;
    for (ListNode? curNode = head; curNode != null; curNode = curNode.next) {
      nodesLen++;
    }

    int midleNodeIndex = (nodesLen / 2).ceil();
    ListNode? resNode = head;
    for (int i = midleNodeIndex - 1; i >= 0; i--) {
      resNode = resNode?.next;
    }

    return resNode;
  }
}
