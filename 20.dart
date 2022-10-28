class Solution {
  bool isValid(String s) {
    if (s.length % 2 == 0) return false;

    Set openBrackets = Set<String>.unmodifiable(["(", "{", "["]);
    var closeBrackets = Map.unmodifiable({"(": ")", "{": "}", "[": "]"});
    var bracketStack = [];
    bracketStack.add(s[0]);

    for (int i = 1; i < s.length; i++) {
      if (openBrackets.contains(s[i])) {
        bracketStack.add(s[i]);
      } else if (bracketStack.length < 1 ||
          closeBrackets[bracketStack.removeLast()] != s[i]) {
        return false;
      }
    }
    return bracketStack.length == 0;
  }
}
