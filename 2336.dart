class SmallestInfiniteSet {
  int minNum = 1;
  final List<int> outNums = [];

  int popSmallest() {
    return outNums.isNotEmpty ? outNums.removeAt(0) : ++minNum - 1;
  }

  void addBack(int num) {
    if (minNum <= num) return;
    int i = outNums.indexWhere((element) => element >= num);
    if (i == -1) {
      outNums.add(num);
    } else if (outNums[i] != num) {
      outNums.insert(i, num);
    }
  }
}
