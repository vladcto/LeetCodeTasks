class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  void reorderList(ListNode? head) {
    final visited = <ListNode>[];
    while (head != null) {
      visited.add(head);
      head = head.next;
    }
    ListNode? prev = null;
    while (visited.length >= 2) {
      final last = visited.removeLast();
      final first = visited.removeAt(0);
      if (prev != null) prev.next = first;
      first.next = last..next = null;
      prev = last;
    }
    if (visited.isNotEmpty && prev != null) prev.next = visited[0]..next = null;
  }
}
