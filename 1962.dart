class Solution {
  int minStoneSum(List<int> piles, int k) {
    MaxHeap heap = MaxHeap();
    piles.forEach((element) => heap.addValue(element));
    while (k-- > 0) {
      heap.decraseMaxValue(heap.max ~/ 2);
    }
    return heap.array.reduce((value, element) => value += element);
  }
}

class MaxHeap {
  var _heap = <int>[];

  int get max => _heap[0];

  void addValue(int value) {
    _heap.add(value);
    int i = _heap.length - 1;
    while (i > 0) {
      int parent = _parentIndex(i);
      if (_heap[i] > _heap[parent]) {
        _heap[parent] += _heap[i];
        _heap[i] = _heap[parent] - _heap[i];
        _heap[parent] -= _heap[i];
      }
      i = parent;
    }
  }

  void decraseMaxValue(int value) {
    _heap[0] -= value;
    int i = 0;
    while (_leftChildIndex(i) < _heap.length) {
      int lChild = _leftChildIndex(i);
      int rChild = _rightChildIndex(i) < _heap.length ? _rightChildIndex(i) : lChild;
      int maxChild = _heap[lChild] > _heap[rChild] ? lChild : rChild;
      if (_heap[i] < _heap[maxChild]) {
        _heap[maxChild] += _heap[i];
        _heap[i] = _heap[maxChild] - _heap[i];
        _heap[maxChild] -= _heap[i];
      } else {
        break;
      }
      i = maxChild;
    }
  }

  List<int> get array => _heap;

  int _parentIndex(int childIndex) => (childIndex - 1) ~/ 2;

  int _leftChildIndex(int parentIndex) => parentIndex * 2 + 1;

  int _rightChildIndex(int parentIndex) => parentIndex * 2 + 2;
}
