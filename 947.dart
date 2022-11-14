class Solution {
  int removeStones(List<List<int>> stones) {
    Map<int, List<int>> graph = {};
    for (int i = 0; i < stones.length; i++)
      for (int j = 0; j < stones.length; j++) {
        if (i == j) continue;
        if (stones[i][0] == stones[j][0] || stones[i][1] == stones[j][1])
          graph.containsKey(i) ? graph[i]!.add(j) : graph[i] = [j];
      }

    Set<int> visited = {};
    int countUndelete = 0;
    for (int i = 0; i < stones.length; i++) {
      if (visited.contains(i)) continue;
      countUndelete++;
      visited.add(i);
      dfs(graph, visited, i);
    }

    return stones.length - countUndelete;
  }

  void dfs(Map<int, List<int>> graph, Set<int> visited, int index) {
    var heighbors = graph[index] ?? [];
    for (int i = 0; i < heighbors.length; i++) {
      if (visited.contains(heighbors[i])) continue;
      visited.add(heighbors[i]);
      dfs(graph, visited, heighbors[i]);
    }
  }
}
