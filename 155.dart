import 'dart:math';

class MinStack {
  List<int> mins = [];
  List<int> stack = [];

  void push(int val) {
    stack.add(val);
    if (mins.length == 0)
      mins.add(val);
    else
      mins.add(min(mins.last, val));
  }

  void pop() {
    stack.removeLast();
    mins.removeLast();
  }

  int top() => stack.last;

  int getMin() => mins.last;
}
