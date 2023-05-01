class Solution {
  int isWinner(List<int> player1, List<int> player2) {
    int score1 = countPlayer(player1);
    int score2 = countPlayer(player2);
    if (score1 == score2) {
      return 0;
    } else {
      return score1 > score2 ? 1 : 2;
    }
  }

  int countPlayer(List<int> player) {
    int res = 0;
    int doubleX = 0;
    for (final step in player) {
      res += doubleX-- > 0 ? step * 2 : step;
      if (step == 10) doubleX = 2;
    }
    return res;
  }
}
