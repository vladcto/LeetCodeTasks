class Solution {
  List<int> findArray(List<int> pref) {
    List<int> res = List.filled(pref.length, pref[0]);
    for (int i = 1; i < pref.length; i++) {
      res[i] = pref[i] ^ pref[i - 1];
    }
    return res;
  }
}
