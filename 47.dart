class Solution {
  List<List<int>> permuteUnique(List<int> nums) {
    List<List<int>> res = [];
    permutation(nums, (p0) {
      if (!res.any((element) => listsEqual(element, p0))) res.add(p0);
    });
    return res.toList();
  }

  void permutation(List<int> input, Function(List<int>) output,
      [List<int> temp = const []]) {
    if (input.length == 0) {
      output(temp);
      return;
    }

    for (int i = 0; i < input.length; i++) {
      var tmp = input.removeAt(i);
      permutation(input, output, List.from(temp)..add(tmp));
      input.insert(i, tmp);
    }
  }

  bool listsEqual(List l1, List l2) {
    if (l1.length != l2.length) return false;
    for (int i = 0; i < l1.length; i++) if (l1[i] != l2[i]) return false;
    return true;
  }
}
