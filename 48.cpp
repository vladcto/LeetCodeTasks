#include <utility>
#include <vector>
using namespace std;

class Solution {
public:
  void rotate(vector<vector<int>> &matrix) {
    auto size = ranges::ssize(matrix);
    auto carry = 0;
    for (auto i = 0; i <= size / 2; i++) {
      auto lastI = size - i - 1;
      carry = exchange(matrix[i][i], matrix[lastI][i]);
      carry = exchange(matrix[i][lastI], carry);
      carry = exchange(matrix[lastI][lastI], carry);
      matrix[lastI][i] = carry;
      for (auto j = 1; j < size - i * 2 - 1; j++) {
        carry = exchange(matrix[i][i + j], matrix[lastI - j][i]);
        carry = exchange(matrix[i + j][lastI], carry);
        carry = exchange(matrix[lastI][lastI - j], carry);
        matrix[lastI - j][i] = carry;
      }
    }
  }
};