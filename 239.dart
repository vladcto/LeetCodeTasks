import "dart:collection";

class Solution {
  List<int> maxSlidingWindow(List<int> nums, int k) {
    Queue deque = Queue<int>();
    List<int> res = [];
    for (int i = 0; i < nums.length; i++) {
      // remove smaller
      while (deque.isNotEmpty && nums[deque.last] < nums[i]) deque.removeLast();
      // remove old
      while (deque.isNotEmpty && i - deque.first >= k) deque.removeFirst();
      deque.add(i);
      if (i + 1 - k >= 0) res.add(nums[deque.first]);
    }
    return res;
  }
}
