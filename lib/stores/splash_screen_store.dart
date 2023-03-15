import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';

import '../features/login/login_screen.dart';

part 'splash_screen_store.g.dart';

class SplashScreenStore = _SplashScreenStore with _$SplashScreenStore;

abstract class _SplashScreenStore with Store {
  @observable
  bool animate2 = false;

  @observable
  bool animate = false;

  @observable
  bool animateText = false;

  @observable
  double opacity = 0;

  @observable
  double opacity2 = 0;

  @observable
  double opacity3 = 0;

  @action
  void increaseOpacity() {
    opacity += 1;
  }

  @action
  void showForm() {
    increaseOpacity2();
    animateForm();
  }

  @action
  void increaseOpacity2() {
    opacity2 += 1;
  }

  @action
  void animateForm() {
    animate2 = true;
  }

  @action
  void animateUp() {
    animateText = true;
  }

  @action
  Future showSignUp() async {
    await Future.delayed(const Duration(milliseconds: 1800));
    Navigator.pushReplacement(context as BuildContext,
        MaterialPageRoute(builder: (BuildContext context) {
      return const MainPage();
    }));
  }

  @action
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    increaseOpacity();
    await Future.delayed(const Duration(milliseconds: 3500));
    showForm();
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(() => const MainPage());
    //await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return const HomePage();}));
  }
}
