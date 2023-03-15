import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../common/design_guide/dimensions.dart';

class PhGauge extends StatefulWidget {
  final double ph;
  const PhGauge({Key? key, required this.ph}) : super(key: key);

  @override
  State<PhGauge> createState() => _PhGaugeState();
}

class _PhGaugeState extends State<PhGauge> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: Dimensions.getHeight(200),
        width: Dimensions.getWidth(300),
        // color: Colors.grey,
        child: SfRadialGauge(
          axes: <RadialAxis>[
            RadialAxis(
              minimum: 0,
              maximum: 14,
              interval: 2,
              pointers: <GaugePointer>[
                NeedlePointer(
                  value: widget.ph,
                  //enableAnimation: true,
                )
              ],
              ranges: <GaugeRange>[
                GaugeRange(
                  startValue: 0,
                  endValue: 1,
                  color: Colors.red,
                ),
                GaugeRange(
                  startValue: 1,
                  endValue: 2,
                  color: Colors.deepOrange,
                ),
                GaugeRange(
                  startValue: 2,
                  endValue: 3,
                  color: Colors.orange,
                ),
                GaugeRange(
                  startValue: 3,
                  endValue: 4,
                  color: Colors.yellow,
                ),
                GaugeRange(
                  startValue: 4,
                  endValue: 5,
                  color: Colors.yellowAccent,
                ),
                GaugeRange(
                  startValue: 5,
                  endValue: 6,
                  color: Colors.lightGreen,
                ),
                GaugeRange(
                  startValue: 6,
                  endValue: 7,
                  color: Colors.green,
                ),
                GaugeRange(
                  startValue: 7,
                  endValue: 8,
                  color: Colors.teal,
                ),
                GaugeRange(
                  startValue: 8,
                  endValue: 9,
                  color: Colors.teal[600],
                ),
                GaugeRange(
                  startValue: 9,
                  endValue: 10,
                  color: Colors.blue[500],
                ),
                GaugeRange(
                  startValue: 10,
                  endValue: 11,
                  color: Colors.blue[700],
                ),
                GaugeRange(
                  startValue: 11,
                  endValue: 12,
                  color: Colors.blueGrey,
                ),
                GaugeRange(
                  startValue: 12,
                  endValue: 13,
                  color: Colors.deepPurple,
                ),
                GaugeRange(
                  startValue: 13,
                  endValue: 14,
                  color: Colors.purple,
                ),
              ],
            )
          ],
          title: const GaugeTitle(text: 'Ph live data'),
        ),
      ),
    );
  }
}
