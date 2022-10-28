class Solution {
  String longestCommonPrefix(List<String> strs) {
    for (int prefixSize = 0;; prefixSize++) {
      try {
        String curChar = strs[0][prefixSize];
        for (var str in strs) {
          if (str[prefixSize] != curChar)
            return strs[0].substring(0, prefixSize);
        }
      } catch (IndexOutOfBoundsException) {
        return prefixSize == 0 ? "" : strs[0].substring(0, prefixSize);
      }
    }
  }
}
