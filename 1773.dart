class Solution {
  int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
    return items
        .map((e) => chooseItemKey(e, ruleKey))
        .where((e) => e == ruleValue)
        .length;
  }

  String chooseItemKey(List<String> item, String ruleKey) {
    switch (ruleKey) {
      case "type":
        return item[0];
      case "color":
        return item[1];
      case "name":
      default:
        return item[2];
    }
  }
}
