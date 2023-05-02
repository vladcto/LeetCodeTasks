class Solution {
  int minPartitions(String n) {
    return int.parse(
      n.split("").reduce((p, e) => p.compareTo(e) > 0 ? p : e),
    );
  }
}
