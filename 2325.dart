class Solution {
  String decodeMessage(String key, String message) {
    final dictionary = <String, String>{};
    // fill dictionary
    key = key.replaceAll(" ", "");
    for (int i = 0, dictI = 0; i < key.length; i++) {
      if (dictionary[key[i]] == null) {
        dictionary[key[i]] = letterFromIndex(dictI++);
      }
    }
    // decode message
    final letters = message.split("");
    for (int i = 0; i < letters.length; i++) {
      if (letters[i] == " ") continue;
      letters[i] = dictionary[message[i]]!;
    }
    return letters.join("");
  }

  String letterFromIndex(int i) => String.fromCharCode("a".codeUnitAt(0) + i);
}
