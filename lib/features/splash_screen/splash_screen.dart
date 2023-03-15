import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../stores/splash_screen_store.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashScreenStore splashScreenStore = Get.put(SplashScreenStore());

  @override
  initState() {
    super.initState();
    splashScreenStore.startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedOpacity(
              opacity: splashScreenStore.opacity,
              duration: const Duration(milliseconds: 1000),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage(
                        "lib/assets/images/wqsm_splash.png",
                      ),
                      height: 113,
                      width: 117,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 2000),
                      opacity: splashScreenStore.opacity,
                      child: const Text(
                        "Water Quality Management System",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Sans-serif",
                            fontSize: 16,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
