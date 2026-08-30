/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
#include <stdlib.h>
#include <string.h>

int *findDisappearedNumbers(int *nums, int numsSize, int *returnSize) {
  bool numsOccurrence[numsSize];
  memset(numsOccurrence, false, sizeof(numsOccurrence));

  for (int i = 0; i < numsSize; i++) {
    numsOccurrence[nums[i] - 1] = true;
  }

  *returnSize = 0;
  int *res = malloc(sizeof(int[numsSize]));
  for (int i = 0; i < numsSize; i++) {
    if (!numsOccurrence[i]) {
      res[(*returnSize)++] = i + 1;
    }
  }
  return res;
}