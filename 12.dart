class Solution {
  static const Map<int, String> romanDict = {
    1: "I",
    4: "IV",
    5: "V",
    9: "IX",
    10: "X",
    40: "XL",
    50: "L",
    90: "XC",
    100: "C",
    400: "CD",
    500: "D",
    900: "CM",
    1000: "M"
  };

  String intToRoman(int num) {
    final romanValues = romanDict.keys.toList();
    int i = romanValues.length - 1;
    String roman = "";
    while (num > 0) {
      if (romanValues[i] > num) {
        i--;
        continue;
      }
      num -= romanValues[i];
      roman += romanDict[romanValues[i]]!;
    }
    return roman;
  }
}
