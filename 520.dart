class Solution {
  bool detectCapitalUse(String word) {
    if (word.length < 2) return true;
    bool uppercase = word[1].toUpperCase() == word[1];
    if (uppercase && word[0].toUpperCase() != word[0]) return false;
    return word
        .substring(1)
        .split("")
        .every((x) => uppercase == (x.toUpperCase() == x));
  }
}
