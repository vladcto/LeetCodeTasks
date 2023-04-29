class Solution {
  List<String> readBinaryWatch(int turnedOn) {
    var res = <String>[];
    combinations(
      turnedOn,
      (e) {
        var time = convertTime(e);
        if (time != null) res.add(time);
      },
      [],
    );

    return res;
  }

  String? convertTime(List<int> combination) {
    final List<int> ledsMinutes = const [
      1,
      2,
      4,
      8,
      16,
      32,
    ];
    final List<int> ledsHour = const [
      1,
      2,
      4,
      8,
    ];

    int minutes = 0;
    int hours = 0;
    for (var i in combination) {
      if (i < 6) {
        minutes += ledsMinutes[i];
      } else {
        hours += ledsHour[i - 6];
      }
    }

    if (minutes > 59 || hours > 11) return null;
    return "$hours:${minutes < 10 ? "0$minutes" : minutes.toString()}";
  }

  void combinations(
    int leds,
    Function(List<int> ledsOn) onCreate,
    List<int> dummy, [
    int nowLed = 0,
  ]) {
    if (dummy.length == leds) {
      onCreate(dummy);
      return;
    }

    for (int i = nowLed; i < 10; i++) {
      dummy.add(i);
      combinations(leds, onCreate, dummy, i + 1);
      dummy.removeLast();
    }
  }
}
