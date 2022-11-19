import 'dart:collection';

class Solution {
  int ladderLength(String beginWord, String endWord, List<String> wordList) {
    Map<int, List<int>> wordsGraph = {};
    wordList.insert(0, beginWord);
    int endWorldIndex = wordList.indexOf(endWord);
    if (endWorldIndex == -1) return 0;

    for (int i = 0; i < wordList.length; i++)
      for (int j = i + 1; j < wordList.length; j++) {
        if (isSimilarWords(wordList[i], wordList[j])) {
          wordsGraph.putIfAbsent(i, () => []).add(j);
          wordsGraph.putIfAbsent(j, () => []).add(i);
        }
      }

    int count = 0;
    Queue<int> bfsQueue = Queue()..add(0);
    Set<int> visited = {};
    while (!bfsQueue.isEmpty) {
      if (visited.contains(endWorldIndex)) return count;
      int queueLen = bfsQueue.length;
      for (int i = 0; i < queueLen; i++) {
        int nowWord = bfsQueue.removeFirst();
        if (visited.contains(nowWord)) continue;
        visited.add(nowWord);
        bfsQueue.addAll(wordsGraph[nowWord] ?? []);
      }
      count++;
    }

    return 0;
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
