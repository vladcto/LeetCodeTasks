class Solution {
  List<List<int>> permute(List<int> nums) {
    List<List<int>> res = [];
    permutation(nums, (p0) => res.add(p0));
    return res;
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
}
