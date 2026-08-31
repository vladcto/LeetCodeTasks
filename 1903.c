#include <stdlib.h>
#include <string.h>

char *largestOddNumber(char *num) {
  int len = strlen(num);

  int firstOddI = -1;
  for (int i = len - 1; i >= 0; i--) {
    if ((num[i] - '0') % 2 == 1) {
      firstOddI = i;
      break;
    }
  }
  num[firstOddI + 1] = '\0';

  return num;
}