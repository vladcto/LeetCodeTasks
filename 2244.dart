class Solution {
  int minimumRounds(List<int> tasks) {
    var tasksCount = <int, int>{};
    tasks.forEach(
        (task) => tasksCount[task] = tasksCount.putIfAbsent(task, () => 0) + 1);

    int rounds = 0;
    for (var key in tasksCount.keys) {
      if (tasksCount[key]! == 1) return -1;
      rounds += (tasksCount[key]! + 2) ~/ 3;
    }
    return rounds;
  }
}
