#include <stdlib.h>
#include <string.h>

int numsFreq[201];

static int _compare(const void *va, const void *vb) {
  int a = *(int *)va;
  int b = *(int *)vb;
  int freqA = numsFreq[a + 100];
  int freqB = numsFreq[b + 100];

  return 2 * ((freqA > freqB) - (freqB > freqA)) + ((b > a) - (a > b));
}

int *frequencySort(int *nums, int numsSize, int *returnSize) {
  memset(numsFreq, 0, sizeof(numsFreq));

  for (int i = 0; i < numsSize; i++) {
    numsFreq[nums[i] + 100]++;
  }
  qsort(nums, numsSize, sizeof(*nums), _compare);

  *returnSize = numsSize;
  return nums;
}