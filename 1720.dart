class Solution {
  List<int> decode(List<int> encoded, int first) {
    final res = List.filled(encoded.length + 1, 0);
    res[0] = first;
    for (int i = 0; i < encoded.length; i++) {
      res[i + 1] = encoded[i] ^ res[i];
    }
    return res;
  }
}
