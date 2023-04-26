class Solution {
  int thirdMax(List<int> nums) {
    List<int> sortedNums = [nums[0]];

    for (int i = 1; i < nums.length; i++) {
      var nowNum = nums[i];
      if (sortedNums.contains(nowNum)) continue;
      if (sortedNums.length < 3) {
        mergeInsert(sortedNums, nowNum);
      } else if (sortedNums.first < nowNum) {
        sortedNums.removeAt(0);
        mergeInsert(sortedNums, nowNum);
      }
    }

    return sortedNums.length == 3 ? sortedNums.first : sortedNums.last;
  }

  void mergeInsert(List<int> nums, int insertNum) {
    int i = nums.indexWhere((e) => e > insertNum);
    i = i == -1 ? nums.length : i;
    nums.insert(i, insertNum);
  }
}
