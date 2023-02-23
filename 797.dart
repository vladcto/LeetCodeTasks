class Solution {
  List<List<int>> allPathsSourceTarget(List<List<int>> graph) {
    Map<int, List<int>> graphSides = {};
    for (int i = 0; i < graph.length; i++) {
      graphSides[i] = graph[i];
    }
    return dfs(graphSides, 0, graph.length - 1, []);
  }

  List<List<int>> dfs(
      Map<int, List<int>> graph, int start, int target, List<int> visited) {
    if (visited.contains(start)) return [];
    List<List<int>> res = [];

    visited.add(start);
    if (start == target) {
      res.add([...visited]);
      visited.removeLast();
      return res;
    }

    for (var side in graph[start]!) res.addAll(dfs(graph, side, target, visited));
    visited.removeLast();
    return res;
  }
}
