class Solution {
  int maximumBags(List<int> capacity, List<int> rocks, int additionalRocks) {
    var newCapacity = List.generate(capacity.length, (i) => capacity[i] - rocks[i])
        .toList()
      ..sort();
    int filledBag = 0;
    while (filledBag < newCapacity.length &&
        additionalRocks >= newCapacity[filledBag]) {
      additionalRocks -= newCapacity[filledBag];
      filledBag++;
    }
    return filledBag;
  }
}
