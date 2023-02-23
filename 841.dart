class Solution {
  bool canVisitAllRooms(List<List<int>> rooms) {
    Set<int> visited = {};
    dfs(0, rooms, visited);
    return visited.length == rooms.length;
  }

  void dfs(int nowNode, List<List<int>> rooms, Set<int> visited) {
    if (visited.contains(nowNode)) return;
    visited.add(nowNode);
    for (var key in rooms[nowNode]) {
      dfs(key, rooms, visited);
    }
  }
}
