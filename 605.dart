class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int nowFree = 0;
    for (int i = 0; i < flowerbed.length && n > 0; i++) {
      if (flowerbed[i] == 1) {
        n -= calculateFlowers(nowFree);
        nowFree = -1;
      } else {
        nowFree++;
      }
    }
    n -= calculateFlowers(nowFree + 1);
    return n <= 0;
  }

  int calculateFlowers(int n) {
    if (n < 2) return 0;
    return n ~/ 2;
  }
}
