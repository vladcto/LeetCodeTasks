import 'dart:collection';

class Solution {
  List<List<String>> findLadders(
      String beginWord, String endWord, List<String> wordList) {
    Map<int, List<int>> wordsGraph = {};
    wordList.insert(0, beginWord);
    int endWorldIndex = wordList.indexOf(endWord);
    if (endWorldIndex == -1) return [];

    for (int i = 0; i < wordList.length; i++)
      for (int j = i + 1; j < wordList.length; j++) {
        if (isSimilarWords(wordList[i], wordList[j])) {
          wordsGraph.putIfAbsent(i, () => []).add(j);
          wordsGraph.putIfAbsent(j, () => []).add(i);
        }
      }

    List<List<int>> pathGraph = List.generate(wordList.length, (index) => []);
    Queue<int> dfsQueue = Queue()..add(0);
    Set<int> visited = {};
    Set<int> childVisited = {};
    while (!dfsQueue.isEmpty) {
      childVisited.addAll(dfsQueue);
      if (pathGraph[endWorldIndex].length > 0) break;
      int queueLen = dfsQueue.length;
      for (int i = 0; i < queueLen; i++) {
        int nowWord = dfsQueue.removeFirst();
        if (visited.contains(nowWord)) continue;
        visited.add(nowWord);
        dfsQueue.addAll(wordsGraph[nowWord] ?? []);
        (wordsGraph[nowWord] ?? []).forEach((index) =>
            !childVisited.contains(index) && !visited.contains(index)
                ? pathGraph[index].add(nowWord)
                : null);
      }
      childVisited.clear();
    }

    if (pathGraph[endWorldIndex].length == 0) return [];
    return buildPath(endWorldIndex, pathGraph, wordList);
  }

  List<List<String>> buildPath(
      int i, List<List<int>> paths, List<String> worlds) {
    if (paths[i].length == 0)
      return [
        [worlds[i]]
      ];

    List<List<String>> res = [];
    for (int j = 0; j < paths[i].length; j++) {
      for (var element in buildPath(paths[i][j], paths, worlds)) {
        res.add(element..add(worlds[i]));
      }
    }
    return res;
  }

  bool isSimilarWords(String s1, String s2) {
    bool oneUnigie = false;
    for (int i = 0; i < s1.length; i++) {
      if (s1.codeUnitAt(i) != s2.codeUnitAt(i)) {
        if (oneUnigie) return false;
        oneUnigie = true;
      }
    }
    return oneUnigie;
  }
}
