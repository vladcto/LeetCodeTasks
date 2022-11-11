class Solution {
  bool checkInclusion(String s1, String s2) {
    if (s1.length > s2.length) return false;
    var ls1 = s1.runes.toList();
    var ls2 = s2.runes.toList();

    //
    Map<int, int> symbolsS1 = {};
    for (var symb in ls1) {
      symbolsS1[symb] = 1 + (symbolsS1[symb] ?? 0);
    }
    //
    Map<int, int> symbolsS2 = {};
    for (int i = 0; i < ls1.length - 1; i++) {
      symbolsS2[ls2[i]] = 1 + (symbolsS2[ls2[i]] ?? 0);
    }

    //
    for (int i = 0; i <= ls2.length - ls1.length; i++) {
      symbolsS2[ls2[i + ls1.length - 1]] =
          (symbolsS2[ls2[i + ls1.length - 1]] ?? 0) + 1;
      if (isMapsEqual(symbolsS2, symbolsS1)) return true;
      symbolsS2[ls2[i]] = symbolsS2[ls2[i]]! - 1;
    }
    return false;
  }

  bool isMapsEqual(Map<int, int> m1, Map<int, int> m2) {
    if (m2.length > m1.length) {
      var tmp = m2;
      m2 = m1;
      m1 = tmp;
    }

    for (var key in m1.keys) if (m1[key] != (m2[key] ?? 0)) return false;
    return true;
  }
}
