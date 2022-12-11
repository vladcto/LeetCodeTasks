class Solution {
  final Set<String> vowels = const {
    'a',
    'e',
    'i',
    'o',
    'u',
    'A',
    'E',
    'I',
    'O',
    'U'
  };

  bool halvesAreAlike(String s) {
    int vowelsCounter = 0;
    //first half
    for (int i = 0; i < s.length ~/ 2; i++) {
      var nowChar = s[i];
      if (vowels.contains(nowChar)) vowelsCounter++;
    }
    //second half
    for (int i = s.length ~/ 2; i < s.length; i++) {
      var nowChar = s[i];
      if (vowels.contains(nowChar)) vowelsCounter--;
    }
    return vowelsCounter == 0;
  }
}
