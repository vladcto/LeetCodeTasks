#include <math.h>

int bitwiseComplement(int num) {
  if (num == 0) {
    return 1;
  }
  int bitCount = floor(log2(num)) + 1;
  int mask = ~(~0u << bitCount);
  return ~num & mask;
}