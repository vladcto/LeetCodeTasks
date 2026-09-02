#include <math.h>
#include <stdlib.h>

char *convertToBase7(int num) {
  if (num == 0) {
    char *tmp = malloc(2 * sizeof(char));
    tmp[0] = '0';
    tmp[1] = '\0';
    return tmp;
  }

  bool isNegative;
  if (num < 0) {
    isNegative = true;
    num = -num;
  } else {
    isNegative = false;
  }

  int numOrder = (log(num) / log(7)) + 1;
  int size = numOrder + 1 + (isNegative ? 1 : 0);
  char *res = malloc(size * sizeof(*res));
  res[size - 1] = '\0';

  if (isNegative) {
    res[0] = '-';
  }

  for (int i = 2; num > 0; i++, num /= 7) {
    res[size - i] = (num % 7) + '0';
  }

  return res;
}