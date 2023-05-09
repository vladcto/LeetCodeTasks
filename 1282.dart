class Solution {
  List<List<int>> groupThePeople(List<int> groupSizes) {
    final Map<int, List<List<int>>> groupes = {};
    for (int i = 0; i < groupSizes.length; i++) {
      var group = groupes.putIfAbsent(groupSizes[i], () => [[]]);
      if (group.last.length < groupSizes[i]) {
        group.last.add(i);
      } else {
        group.add([i]);
      }
    }
    return groupes.values.fold(<List<int>>[], (p, e) => p..addAll(e));
  }
}
