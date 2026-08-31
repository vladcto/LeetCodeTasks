#include <string.h>

char *truncateSentence(char *s, int k) {
  int n = strlen(s);

  for (int i = 0; i < n; i++) {
    if (s[i] == ' ' && !--k) {
      s[i] = '\0';
      break;
    }
  }
  return s;
}