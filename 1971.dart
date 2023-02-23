class Solution {
  bool validPath(int n, List<List<int>> edges, int source, int destination) {
    Map<int, List<int>> neighbors = {};
    for (int i = 0; i < edges.length; i++) {
      var curEdge = edges[i];
      neighbors.putIfAbsent(curEdge[0], () => []).add(curEdge[1]);
      neighbors.putIfAbsent(curEdge[1], () => []).add(curEdge[0]);
    }
    return bfs(neighbors, source, destination);
  }

  bool bfs(Map<int, List<int>> neighbors, int startPoint, int find) {
    var visited = <int>{};
    var toVisit = <int>[startPoint];
    while (!toVisit.isEmpty) {
      int curNode = toVisit.removeAt(0);
      if (visited.contains(curNode)) continue;
      visited.add(curNode);
      if (curNode == find) return true;
      toVisit.addAll(neighbors[curNode] ?? []);
    }
    return false;
  }
}
