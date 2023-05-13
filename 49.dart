class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
      Map<String, List<String>> anagrams = {};
      for(int i = 0; i < strs.length; i++){
          final anagram = (strs[i].split("")..sort()).join("");
          anagrams.putIfAbsent(anagram, () => []).add(strs[i]);
      }
      return anagrams.values.toList();
  }
}