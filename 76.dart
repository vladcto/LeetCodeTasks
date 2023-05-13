class Solution {
  String minWindow(String s, String t) {
    Map<String, int> tMap = t.split("").fold(
      <String, int>{},
      (p, e) => p..[e] = (p[e] ?? 0) + 1,
    );

    Map<String, int> sMap = {};
    var resIndexs = [];
    for (int i = 0, li = 0; i < s.length; i++) {
      sMap[s[i]] = (sMap[s[i]] ?? 0) + 1;

      while (includedMap(tMap, sMap) && li <= i) {
        if (resIndexs.isEmpty || resIndexs[1] - resIndexs[0] > i - li) {
          resIndexs = [li, i];
        }
        sMap[s[li]] = (sMap[s[li]] ?? 0) - 1;
        li++;
      }
    }
    return resIndexs.isEmpty ? "" : s.substring(resIndexs[0], resIndexs[1] + 1);
  }

  bool includedMap<T>(Map<T, int> checkMap, Map<T, int> outMap) {
    for (final key in checkMap.keys) {
      if (!outMap.containsKey(key)) return false;
      if (checkMap[key]! > outMap[key]!) return false;
    }
    return true;
  }
}
