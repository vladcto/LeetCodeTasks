import 'dart:math';

class Solution {
  double average(List<int> salary) {
    int maxSalary = -1, minSalary = 10000000;
    int res = 0;
    for (var item in salary) {
      maxSalary = max(maxSalary, item);
      minSalary = min(minSalary, item);
      res += item;
    }
    return (res - maxSalary - minSalary) / (salary.length - 2);
  }
}
