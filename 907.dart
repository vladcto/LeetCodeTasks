class Solution {
  int sumSubarrayMins(List<int> arr) {
    int res = 0;
    List<int> monoStack = []; // incrasing stack
    arr.add(0);
    for (int i = 0; i < arr.length; i++) {
      while (!monoStack.isEmpty && arr[monoStack.last] > arr[i]) {
        int nowNum = monoStack.removeLast();
        int r = i, l = (!monoStack.isEmpty ? monoStack.last : -1);
        res += arr[nowNum] * (r - nowNum) * (nowNum - l);
        res %= 1000000000 + 7;
      }
      monoStack.add(i);
    }

    return res;
  }
}
