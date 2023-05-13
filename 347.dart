class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> frequences = {};
    for(var nowNum in nums){
      frequences[nowNum] = (frequences[nowNum] ?? 0) + 1;
    }
    final sortedPairs = frequences.entries.toList()..sort(
      (a,b) =>  b.value.compareTo(a.value),
    );
    return sortedPairs.sublist(0,k).map((e) => e.key).toList();
  }
}