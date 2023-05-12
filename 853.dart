import 'dart:math';

class Solution {
  int carFleet(int target, List<int> position, List<int> speed) {
    final pairs = List.generate(
      position.length,
      (i) => [position[i], (target - position[i]) / speed[i]],
    );
    pairs.sort((a, b) => a[0].compareTo(b[0]));

    for (int i = pairs.length - 2; i >= 0; i--) {
      pairs[i][1] = max(pairs[i + 1][1], pairs[i][1]);
    }

    int count = 1;
    for (int i = 1; i < pairs.length; i++) {
      if (pairs[i - 1][1] != pairs[i][1]) count++;
    }
    return count;
  }
}
