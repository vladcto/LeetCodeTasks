import 'dart:collection';

typedef TimestapTree = SplayTreeMap<int, String>;

class TimeMap {
  final dict = <String, TimestapTree>{};

  void set(String key, String value, int timestamp) {
    dict[key] ??= TimestapTree((p, e) => p.compareTo(e));
    dict[key]![timestamp] = value;
  }

  String get(String key, int timestamp) {
    int findKey = dict[key]?.lastKeyBefore(timestamp + 1) ?? -1;
    return dict[key]![findKey] ?? "";
  }
}
