int max(int a, int b) { return a >= b ? a : b; }

int findMaxConsecutiveOnes(int *nums, int numsSize) {
  int res = 0;

  int consecutive = 0;
  for (int i = 0; i < numsSize; i++) {
    if (nums[i] == 1) {
      consecutive += 1;
    } else {
      res = max(consecutive, res);
      consecutive = 0;
    }
  }
  res = max(consecutive, res);

  return res;
}