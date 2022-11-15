class Solution {
  bool isPalindrome(String s) {
    var letters = s.toLowerCase().runes.toList();
    int l = 0, r = letters.length - 1;
    while (l < r) {
      try {
        while (!isValid(letters[l])) l++;
        while (!isValid(letters[r])) r--;
      } on RangeError {
        break;
      }
      if (letters[l++] != letters[r--]) return false;
    }
    return true;
  }

  bool isValid(int code) {
    return ("a".codeUnitAt(0) <= code && code <= "z".codeUnitAt(0)) ||
        ("0".codeUnitAt(0) <= code && code <= "9".codeUnitAt(0));
  }
}
