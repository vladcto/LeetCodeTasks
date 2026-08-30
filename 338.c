/**
 * Note: The returned array must be malloced, assume caller calls free().
 */

#include <stdlib.h>

int countOnes(int num) {
  int res = 0;
  while (num > 0) {
    if (num % 2 == 1) {
      res++;
    }
    num /= 2;
  }
  return res;
}

int *countBits(int n, int *returnSize) {
  int *res = malloc(sizeof(int[n + 1]));
  *returnSize = n + 1;

  for (int i = 0; i <= n; i++) {
    res[i] = countOnes(i);
  }

  return res;
}