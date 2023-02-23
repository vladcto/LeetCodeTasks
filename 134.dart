class Solution {
  int canCompleteCircuit(List<int> gas, List<int> cost) {
    int totalGas = 0, totalCost = 0;
    int startPos = 0, curGas = 0;
    for (int i = 0; i < gas.length; i++) {
      totalGas += gas[i];
      totalCost += cost[i];
      curGas += gas[i] - cost[i];

      if (curGas < 0) {
        curGas = 0;
        startPos = i + 1;
      }
    }
    return (totalGas >= totalCost) ? startPos : -1;
  }
}
