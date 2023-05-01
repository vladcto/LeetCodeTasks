class Solution {
  int numJewelsInStones(String jewels, String stones) {
    var jewelsSet = jewels.split("").toSet();
    int res = 0;
    for(int i = 0; i < stones.length; i++){
      if(jewelsSet.contains(stones[i])) res++;
    }
    return res;
  }
}