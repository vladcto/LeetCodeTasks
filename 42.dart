class Solution {
  int trap(List<int> height) {
    //monotone stack of indexes of height from highest to lowest.
    List<int> monotIndex = [];
    int res = 0;

    for (int i = 0; i < height.length; i++) {
      //highest height, all monotIndex[1:] , covered by water.
      if (monotIndex.isEmpty || height[i] >= height[monotIndex.first]) {
        for (int j = 1; j < monotIndex.length; j++)
          res += height[monotIndex.first] - height[monotIndex[j]];
        monotIndex.clear();
        //high height - calculate traped rain btw height[i] and height[j],
        //  where j in monotIndex , j > 0, height[j] >= height[i].
      } else if (height[monotIndex.last] < height[i]) {
        for (int j = monotIndex.length - 1; j >= 1; j--) {
          if (height[monotIndex[j]] < height[i]) {
            res += height[i] - height[monotIndex[j]];
            height[monotIndex[j]] = height[i];
          } else {
            break;
          }
        }
      }
      monotIndex.add(i);
    }
    return res;
  }
}
