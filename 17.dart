class Solution {
  static final keyboard = {
    "2": ["a", "b", "c"],
    "3": ["d", "e", "f"],
    "4": ["g", "h", "i"],
    "5": ["j", "k", "l"],
    "6": ["m", "n", "o"],
    "7": ["p", "q", "r", "s"],
    "8": ["t", "u", "v"],
    "9": ["w", "x", "y", "z"],
  };

  List<String> letterCombinations(String digits) {
    if (digits == "") return [];
    var res = keyboard[digits[0]]!;
    for (int i = 1; i < digits.length; i++) {
      final newRes = <String>[];
      keyboard[digits[i]]!.forEach(
        (symbol) => newRes.addAll(
          res.map((e) => e + symbol),
        ),
      );
      res = newRes;
    }
    return res;
  }
}
