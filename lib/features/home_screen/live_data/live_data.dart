import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wqsm/features/home_screen/live_data/turbidity_chart.dart';

import '../../../common/design_guide/dimensions.dart';
import '../../../models/turbidity_model.dart';
import '../drawer/drawer.dart';
import '../live_data/ph_gauge.dart';

class LiveData extends StatefulWidget {
  const LiveData({Key? key}) : super(key: key);

  @override
  State<LiveData> createState() => _LiveDataState();
}

class _LiveDataState extends State<LiveData> {
  @override
  void initState() {
    super.initState();

    mockTurbidityPoints();
  }

  int flowRate = 0;
  double pH = 6.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Dimensions.getHeight(10),
              ),
              Container(
                height: Dimensions.getHeight(45),
                width: Dimensions.getWidth(45),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('lib/assets/images/wqms_drop.png'))),
              ),
              SizedBox(
                height: Dimensions.getHeight(10),
              ),
              Text(
                'Maji Safi Purified Water',
                style: GoogleFonts.varela(
                  fontWeight: FontWeight.w400,
                  fontSize: Dimensions.getHeight(15),
                ),
              ),
              SizedBox(
                height: Dimensions.getHeight(10),
              ),
              Text(
                'LIVE DATA',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff193855),
                    fontSize: Dimensions.getHeight(18)),
              ),
              SizedBox(
                height: Dimensions.getHeight(10),
              ),
              Container(
                height: Dimensions.getHeight(600),
                width: Dimensions.getWidth(300),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius:
                        BorderRadius.circular(Dimensions.getHeight(5))),
                child: Column(
                  children: [
                    PhGauge(
                      ph: pH,
                    ),
                    SizedBox(
                      height: Dimensions.getHeight(5),
                    ),
                    Text(
                      "PH Level : ${pH.toPrecision(2)}",
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.getHeight(20),
                    ),
                    Container(
                      height: Dimensions.getHeight(211),
                      width: Dimensions.getWidth(250),
                      // color: Colors.grey,
                      child: TurbidityChart(
                        points: turbidityPoints,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.getHeight(20),
                    ),
                    Container(
                      height: Dimensions.getHeight(80),
                      width: Dimensions.getWidth(100),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'lib/assets/images/flow_rate.png'))),
                    ),
                    SizedBox(
                      height: Dimensions.getHeight(10),
                    ),
                    Text(
                      "Flow Rate : $flowRate L/min",
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.getHeight(20),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> mockTurbidityPoints() async {
    data = [];
    for (int i = 0; i < 20; i++) {
      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        flowRate += Random().nextInt(10);
        if (pH < 7.5) {
          pH += Random().nextDouble() * 0.2;
        } else {
          pH -= Random().nextDouble() * 0.5;
        }
      });
    }
  }
}
