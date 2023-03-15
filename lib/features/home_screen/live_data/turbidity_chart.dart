import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../models/turbidity_model.dart';

class TurbidityChart extends StatefulWidget {
  final List<TurbidityPoint> points;

  const TurbidityChart({Key? key, required this.points}) : super(key: key);

  @override
  State<TurbidityChart> createState() => _TurbidityChartState();
}

class _TurbidityChartState extends State<TurbidityChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(LineChartData(
          clipData: FlClipData.horizontal(),
          baselineX: 0.05,
          minY: 0,
          minX: 0,
          borderData: FlBorderData(
              show: true,
              border: const Border(
                  bottom: BorderSide(color: Colors.black, width: 2),
                  left: BorderSide(color: Colors.black, width: 2))),
          // rangeAnnotations: RangeAnnotations(horizontalRangeAnnotations: [
          //   HorizontalRangeAnnotation(y1: 10, y2: 10)
          // ], verticalRangeAnnotations: []),
          lineBarsData: [
            LineChartBarData(
                isCurved: false,
                dotData: FlDotData(show: true),
                spots: widget.points
                    .map((point) => FlSpot(point.x, point.y))
                    .toList()),
          ])),
    );
  }
}
