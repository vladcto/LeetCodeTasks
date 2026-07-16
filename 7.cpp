class Solution {
public:
  int reverse(int x) {
    auto reversed = 0;
    while (x != 0) {
      if (__builtin_mul_overflow(reversed, 10, &reversed) ||
          __builtin_add_overflow(reversed, x % 10, &reversed))
        return 0;
      x /= 10;
    }

    return reversed;
  }
};