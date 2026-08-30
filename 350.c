#include <stdlib.h>

int *intersect(int *nums1, int nums1Size, int *nums2, int nums2Size,
               int *returnSize) {
  int minSize = nums1Size > nums2Size ? nums2Size : nums1Size;
  int *res = malloc(sizeof(int[minSize]));
  int resSize = 0;

  for (int i = 0; i < nums1Size; i++) {
    for (int j = 0; j < nums2Size; j++) {
      if (nums1[i] == nums2[j]) {
        nums2[j] = -1;
        res[resSize++] = nums1[i];
        break;
      }
    }
  }

  *returnSize = resSize;
  return res;
}