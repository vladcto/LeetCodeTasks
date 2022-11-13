class Solution {
  List<String> letterCasePermutation(String s) {
    List<String> res = [];
    permut(s.split(""), (p0) => res.add(p0));
    return res;
  }

  void permut(List<String> inp, Function(String) output, [int nowPos = 0]) {
    int nextSymbPos = inp.indexWhere(
        (element) => element.contains(RegExp("[a-zA-Z]")), nowPos);
    if (nextSymbPos == -1) return output(inp.join());

    inp[nextSymbPos] = inp[nextSymbPos].toUpperCase();
    permut(inp..[nextSymbPos].toUpperCase(), output, nextSymbPos + 1);
    inp[nextSymbPos] = inp[nextSymbPos].toLowerCase();
    permut(inp, output, nextSymbPos + 1);
  }
}
