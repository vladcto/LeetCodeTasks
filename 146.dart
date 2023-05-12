class LRUCache {
  final Map<int, int> cache = {};
  int capacity;
  final List<int> lastUsed = [];

  LRUCache(this.capacity);

  int get(int key) {
    if (cache[key] != null) {
      lastUsed.remove(key);
      lastUsed.add(key);
      return cache[key]!;
    } else {
      return -1;
    }
  }

  void put(int key, int value) {
    lastUsed.remove(key);
    if (cache[key] == null) {
      if (capacity < 1) {
        cache.remove(lastUsed.removeAt(0));
      } else {
        capacity -= 1;
      }
    }
    cache[key] = value;
    lastUsed.add(key);
  }
}
