class Solution {
  bool isAnagram(String s, String t) {
    var test = <int, List<int>>{};
    test[Object.hash(1, 2, 3)] = [1, 2, 3];
    test[Object.hash(3, 2, 1)] = [3, 2, 1];
    print(test);

    final word1 = s.split("")..sort();
    final word2 = t.split("")..sort();
    return listEquals(word1, word2);
  }

  bool listEquals(List a, List b) {
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
