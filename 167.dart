class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    int li = 0, ri = numbers.length - 1;
    while (numbers[li] + numbers[ri] != target) {
      if (numbers[li] + numbers[ri] > target)
        ri--;
      else
        li++;
    }
    return [li + 1, ri + 1];
  }
}
