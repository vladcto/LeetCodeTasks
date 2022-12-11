import 'dart:math' show sqrt, min;

class Solution {
  int numSquares(int n) {
    List<int> nums = List.filled(n, 100000);

    for (int i = 0; i < n; i++) {
      if (isRightRectangle(i + 1)) {
        nums[i] = 1;
        continue;
      }

      for (int j = 0; j < i; j++) {
        nums[i] = min(nums[i - j - 1] + nums[j], nums[i]);
      }
    }
 
    return nums[n - 1];
  }

  bool isRightRectangle(int num) {
    return sqrt(num) % 1 == 0;
  }
}
