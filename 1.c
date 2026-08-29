#include <stdlib.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int *twoSum(int *nums, int numsSize, int target, int *returnSize) {
  for (int i = 0; i < numsSize; i++) {
    for (int j = i + 1; j < numsSize; j++) {
      if (nums[i] + nums[j] == target) {
        *returnSize = 2;
        int *result = malloc(sizeof(int[2]));
        result[0] = i;
        result[1] = j;
        return result;
      }
    }
  }
  __builtin_unreachable();
}