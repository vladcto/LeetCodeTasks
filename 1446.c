#include <string.h>

typedef struct {
  char current;
  int count;
} Counter;

int max(int a, int b) { return a >= b ? a : b; }

int maxPower(char *s) {
  int len = strlen(s);
  int maxPower = 0;

  Counter counter = {' ', 0};
  for (int i = 0; i < len; i++) {
    if (s[i] != counter.current) {
      maxPower = max(counter.count, maxPower);
      counter = (Counter){s[i], 1};
    } else {
      counter.count++;
    }
  }

  return max(maxPower, counter.count);
}