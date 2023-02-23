class MyQueue {
  List<int> s1 = [];
  List<int> s2 = [];

  MyQueue() {}

  void push(int x) {
    s1.add(x);
  }

  int pop() {
    while (s1.length > 1) s2.add(s1.removeLast());
    int val = s1.removeLast();
    while (s2.length > 0) s1.add(s2.removeLast());
    return val;
  }

  int peek() {
    while (s1.length > 1) s2.add(s1.removeLast());
    int val = s1.last;
    while (s2.length > 0) s1.add(s2.removeLast());
    return val;
  }

  bool empty() {
    return s1.isEmpty;
  }
}
