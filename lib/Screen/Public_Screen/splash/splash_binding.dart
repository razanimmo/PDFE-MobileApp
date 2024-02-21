import 'package:get/get.dart';
import 'package:pdfe/Screen/Public_Screen/splash/splash_controller.dart';


class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}