class Solution {
  List<List<int>> combine(int n, int k) {
    List<int> inp = List.generate(n, ((index) => index + 1));
    List<List<int>> res = [];
    combination(inp, (p0) => res.add(p0), k);
    return res;
  }

  void combination(List<int> input, Function(List<int>) output, int k,
      [List<int> temp = const []]) {
    if (input.length - k == 0) {
      output(temp);
      return;
    }

    while (input.length >= temp.length + k) {
      var tmp = input.removeAt(0);
      combination(input, output, k, List.from(temp)..add(tmp));
    }
  }
}
