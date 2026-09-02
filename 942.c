#include <stdlib.h>
#include <string.h>

int *diStringMatch(char *s, int *returnSize) {
  int n = strlen(s);
  int *res = malloc((n + 1) * sizeof(*res));
  *returnSize = n + 1;

  int dI = n;
  int iI = 0;
  for (int i = 0; i < n; i++) {
    if (s[i] == 'D') {
      res[i] = dI--;
    } else {
      res[i] = iI++;
    }
  }
  res[n] = iI;

  return res;
}