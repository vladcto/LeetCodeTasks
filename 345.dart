class Solution {
  String reverseVowels(String s) {
    var letters = s.split("");
    int li = letters.indexWhere(isVowel);
    int ri = letters.lastIndexWhere(isVowel);

    while (li < ri) {
      var tmp = letters[li];
      letters[li] = letters[ri];
      letters[ri] = tmp;

      li = letters.indexWhere(isVowel, li + 1);
      ri = letters.lastIndexWhere(isVowel, ri - 1);
    }

    return letters.join("");
  }

  static Set<int> vowels = {
    'a'.codeUnitAt(0),
    'e'.codeUnitAt(0),
    'i'.codeUnitAt(0),
    'o'.codeUnitAt(0),
    'u'.codeUnitAt(0),
    'A'.codeUnitAt(0),
    'E'.codeUnitAt(0),
    'I'.codeUnitAt(0),
    'O'.codeUnitAt(0),
    'U'.codeUnitAt(0),
  };

  bool isVowel(e) => vowels.contains(e.codeUnitAt(0));
}
