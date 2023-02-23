class Solution {
  int evalRPN(List<String> tokens) {
    var nums = <int>[];
    for (var token in tokens) {
      if (isOperand(token))
        nums.add(eval(nums.removeLast(), nums.removeLast(), token));
      else
        nums.add(int.parse(token));
    }
    return nums.last;
  }

  bool isOperand(String inp) {
    return inp == "+" || inp == "*" || inp == "-" || inp == "/";
  }

  int eval(int num1, int num2, String operation) {
    switch (operation) {
      case "+":
        return num2 + num1;
      case "-":
        return num2 - num1;
      case "*":
        return num2 * num1;
      case "/":
        return num2 ~/ num1;
    }
    return 0;
  }
}
