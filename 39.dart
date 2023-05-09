class Solution {
  List<List<int>> combinationSum(List<int> candidates, int target) {
    Map<int, List<List<int>>> sums = {};
    for (var nowNum in candidates) {
      sums.putIfAbsent(nowNum, () => []).add([nowNum]);
      for (int j = nowNum + 1; j <= target; j++) {
        final sum = sums.putIfAbsent(j, () => []);
        sums.putIfAbsent(j - nowNum, () => []).forEach(
              (e) => sum.add(List.from(e)..add(nowNum)),
            );
      }
    }
    return sums[target] ?? [];
  }
}
