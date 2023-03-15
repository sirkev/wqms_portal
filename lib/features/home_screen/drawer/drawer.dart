import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/design_guide/dimensions.dart';
import '../../../common/strings.dart';
import '../../../utils/routes.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            height: Dimensions.getHeight(50),
            color: Colors.blue[200],
          ),
          SizedBox(
            height: Dimensions.getHeight(10),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.getWidth(18)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Dimensions.getHeight(60),
                  width: Dimensions.getWidth(60),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage('lib/assets/images/wqsm_splash.png'))),
                ),
                SizedBox(
                  height: Dimensions.getHeight(10),
                ),
                Text('Maji Safi Purified Water',
                    style: GoogleFonts.varela(
                      fontWeight: FontWeight.w400,
                      fontSize: Dimensions.getHeight(15),
                    )),
                SizedBox(
                  height: Dimensions.getHeight(5),
                ),
                Text('www.majisafipurifiedwater.com',
                    style: GoogleFonts.varela(
                      fontWeight: FontWeight.w400,
                      fontSize: Dimensions.getHeight(12),
                    )),
                SizedBox(
                  height: Dimensions.getHeight(10),
                ),
                Divider(
                  color: Colors.blue[200],
                  thickness: 1,
                ),
                // SizedBox(
                //   height: Dimensions.getHeight(10),
                // ),
                SizedBox(
                  height: Dimensions.getWidth(300),
                  child: ListView.builder(
                      itemCount: labels.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              vertical: Dimensions.getHeight(5)),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => Routes.routes[index]);
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: Dimensions.getHeight(40),
                                  width: Dimensions.getWidth(40),
                                  decoration: BoxDecoration(
                                      // color: Colors.grey,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(images[index]))),
                                ),
                                SizedBox(
                                  width: Dimensions.getWidth(25),
                                ),
                                Text(labels[index]),
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
