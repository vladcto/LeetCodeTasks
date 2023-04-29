class Solution {
  List<String> fizzBuzz(int n) {
    var res = <String>[];
    for (int i = 1; i <= n; i++) {
      String formated = "";
      if (i % 3 == 0) formated += "Fizz";
      if (i % 5 == 0) formated += "Buzz";
      res.add(formated.isEmpty ? i.toString() : formated);
    }
    return res;
  }
}
