#include <stdlib.h>

int *findErrorNums(int *nums, int numsSize, int *returnSize) {
  int numsCount[10001] = {};

  for (int i = 0; i < numsSize; i++) {
    numsCount[nums[i]]++;
  }

  int copy = -1, missing = -1;
  for (int i = 1; i <= numsSize; i++) {
    int freq = numsCount[i];
    if (freq == 0) {
      missing = i;
    } else if (freq == 2) {
      copy = i;
    }
  }

  *returnSize = 2;
  int *res = malloc(2 * sizeof(*res));
  res[0] = copy;
  res[1] = missing;
  return res;
}