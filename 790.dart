class Solution {
  int numTilings(int n) {
    int mod = 1000000007;
    var lastTiles = List.filled(n, 0);
    lastTiles[0] = 1;
    lastTiles[1] = 2;
    lastTiles[2] = 5;
    for (int i = 3; i < n; i++) {
      lastTiles[i] = (2 * lastTiles[i - 1] + lastTiles[i - 3]) % mod;
    }
    return lastTiles.last;
  }
}
