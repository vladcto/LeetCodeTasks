import 'dart:math';

class Solution {
  int jobScheduling(List<int> startTime, List<int> endTime, List<int> profit) {
    var jobs = List<List<int>>.generate(
        startTime.length, (i) => [startTime[i], endTime[i], profit[i]],
        growable: false);
    jobs.sort(((a, b) => a[1].compareTo(b[1])));

    List<int> profitAtTime = List.filled(jobs.length, 0);
    profitAtTime[0] = jobs[0][2];
    for (int i = 1; i < jobs.length; i++) {
      profitAtTime[i] = max(jobs[i][2], profitAtTime[i - 1]);
      for (int j = i - 1; j >= 0; j--) {
        if (jobs[j][1] <= jobs[i][0]) {
          profitAtTime[i] = max(profitAtTime[i], profitAtTime[j] + jobs[i][2]);
          break;
        }
      }
    }

    return profitAtTime.last;
  }
}
