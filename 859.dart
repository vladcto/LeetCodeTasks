class Solution {
  bool buddyStrings(String s, String goal) {
    if (s.length != goal.length) return false;
    final sSplited = s.split("");
    final goalSplited = goal.split("");
    int firstDiff = -1, secondDiff = -1;

    for (int i = 0; i < goal.length; i++) {
      if (sSplited[i] != goalSplited[i]) {
        if (firstDiff == -1) {
          firstDiff = i;
        } else if (secondDiff == -1) {
          secondDiff = i;
        } else {
          return false;
        }
      }
    }

    if (secondDiff == -1) {
      return firstDiff == -1 && sSplited.toSet().length < sSplited.length;
    }
    return (sSplited[firstDiff] == goalSplited[secondDiff] &&
        sSplited[secondDiff] == goalSplited[firstDiff]);
  }
}
