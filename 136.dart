class Solution {
  int singleNumber(List<int> nums) {
    int res = 0;
    for (var nNum in nums) {
      res ^= nNum;
    }
    return res;
  }
}

/* One-line solution
class Solution {
  int singleNumber(List<int> nums) =>
      nums.fold(0, (previousValue, element) => previousValue ^ element);
}
*/
