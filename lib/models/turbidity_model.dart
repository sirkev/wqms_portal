import 'dart:math';

class TurbidityPoint {
  final double x;
  final double y;
  TurbidityPoint({required this.x, required this.y});

  //fetch from firebase
}

var data = [];
var testPoint = 0.0;

List<TurbidityPoint> get turbidityPoints {
  data.add(testPoint + Random.secure().nextDouble() * 1);

  return data
      .asMap()
      .entries
      .map((e) => TurbidityPoint(x: e.key.toDouble(), y: e.value))
      .toList();
}
