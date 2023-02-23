class Solution {
  int minDeletionSize(List<String> strs) {
    var unsortedI = <int>{};
    for (int i = 1; i < strs.length; i++)
      for (int j = 0; j < strs[0].length; j++) {
        if (unsortedI.contains(j)) continue;
        if (strs[i].codeUnitAt(j) < strs[i - 1].codeUnitAt(j)) unsortedI.add(j);
      }
    return unsortedI.length;
  }
}
