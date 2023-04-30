class Solution {
  bool isPerfectSquare(int nums) {
    var root = squareRoot(nums).round();
    return root * root == nums;
  }

  double squareRoot(int nums) {
    double x = 1;
    for (int i = 0; i < 20; i++) {
      x = (x + nums / x) / 2;
    }
    return x;
  }
}
