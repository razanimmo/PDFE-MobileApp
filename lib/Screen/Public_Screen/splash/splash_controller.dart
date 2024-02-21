
import 'dart:async';

import 'package:get/get.dart';

import '../../../utills/Paths.dart';


class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () async {
      Get.toNamed(Paths.loginScreen);
    });
  }
}
