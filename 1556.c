#include <math.h>
#include <stdio.h>
#include <stdlib.h>

char *thousandSeparator(int n) {
  if (n == 0) {
    char *tmp = malloc(2 * sizeof(char));
    tmp[0] = '0';
    tmp[1] = '\0';
    return tmp;
  }

  int count = log10(n) + 1;
  int countSep = (count - 1) / 3;
  int arraySize = countSep + count + 1;
  char *res = malloc(arraySize * sizeof(char));

  res[arraySize - 1] = '\0';
  for (int i = 1; n > 0; i++, n /= 10) {
    if (i % 4 == 0) {
      res[arraySize - 1 - i] = '.';
      i++;
    }
    res[arraySize - 1 - i] = n % 10 + '0';
  }

  return res;
}