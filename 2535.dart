class Solution {
  int differenceOfSum(List<int> nums) {
    int res = 0;
    nums.forEach((e) => res += difference(e));
    return res;
  }

  int difference(int number) =>
      number -
      // digit sum
      number
          .toString()
          .split("")
          .map(
            (e) => int.parse(e),
          )
          .reduce(
            (p, e) => p + e,
          );
}
