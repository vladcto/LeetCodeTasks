class Solution {
  bool hasGroupsSizeX(List<int> deck) {
    Map<int, int> cards = {};
    for (int i = 0; i < deck.length; i++) {
      cards[deck[i]] = (cards[deck[i]] ?? 0) + 1;
    }

    final counts = cards.values.toList();
    final first = counts.first;
    if (counts.length == 1) return first != 1;
    int gcd = first.gcd(counts[1]);
    if (gcd == 1) return false;
    return counts.every((e) {
      if (e % gcd == 0) return true;
      gcd = e.gcd(gcd);
      return gcd != 1;
    });
  }
}
