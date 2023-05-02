class Solution {
  bool isLongPressedName(String name, String typed) {
    int nowIName = 0;
    for (int i = 0; i < typed.length; i++) {
      if (nowIName < name.length && typed[i] == name[nowIName]) {
        nowIName++;
      } else if (nowIName == 0 || typed[i] != name[nowIName - 1]) {
        return false;
      }
    }
    return nowIName == name.length;
  }
}
