#include <vector>

using namespace std;

class Solution {
  static const auto mark = 'X';

public:
  int countBattleships(vector<vector<char>> &board) {
    auto res = 0;

    for (auto i = 0; i < ranges::ssize(board); i++) {
      for (auto j = 0; j < ranges::ssize(board[0]); j++) {
        if (j > 0 && board[i][j - 1] == mark) {
          continue;
        }
        if (i > 0 && board[i - 1][j] == mark) {
          continue;
        }
        if (board[i][j] == mark) {
          res++;
        }
      }
    }

    return res;
  }
};