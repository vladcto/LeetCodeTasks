class Solution {
  String restoreString(String s, List<int> indices) {
    List<String> resArray = List.filled(s.length, "");
    for (int i = 0; i < s.length; i++) {
      resArray[indices[i]] = s[i];
    }
    return resArray.join("");
  }
}
