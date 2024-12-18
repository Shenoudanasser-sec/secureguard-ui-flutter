import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.offAll(() => const WelcomeScreen());
  }
}
