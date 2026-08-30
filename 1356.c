#include <stdlib.h>
#include <string.h>

int memoryBitsCount[10001];

int countOnes(const int num) {
  if (memoryBitsCount[num] != -1) {
    return memoryBitsCount[num];
  }

  int res = 0;
  for (int tmp = num; tmp > 0; tmp >>= 1) {
    res += tmp & 1;
  }
  return memoryBitsCount[num] = res;
}

int compare(const void *av, const void *bv) {
  const int *a = av;
  const int *b = bv;
  int countA = countOnes(*a);
  int countB = countOnes(*b);
  return 2 * ((countA > countB) - (countA < countB)) + ((*a > *b) - (*a < *b));
}

int *sortByBits(int *arr, int arrSize, int *returnSize) {
  memset(memoryBitsCount, -1, sizeof(memoryBitsCount));

  *returnSize = arrSize;
  qsort(arr, arrSize, sizeof(arr[0]), compare);
  return arr;
}