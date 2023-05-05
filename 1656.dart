class OrderedStream {
  final List<String> data;
  int now = 0;

  OrderedStream(int n) : data = List.filled(n, "");

  List<String> insert(int idKey, String value) {
    data[idKey - 1] = value;
    return _getNowData();
  }

  List<String> _getNowData() {
    final res = <String>[];
    while (now < data.length && data[now] != "") {
      res.add(data[now]);
      now++;
    }
    return res;
  }
}
