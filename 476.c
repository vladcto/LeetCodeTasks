#include <math.h>

int findComplement(int num) {
  int bitCount = floor(log2(num)) + 1;
  int mask = ~(~0u << bitCount);
  return ~num & mask;
}