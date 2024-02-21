import 'package:get/get.dart';
import 'package:pdfe/Screen/Public_Screen/login/login_binding.dart';
import 'package:pdfe/Screen/Public_Screen/login/login_screen.dart';
import 'package:pdfe/Screen/Public_Screen/splash/splash_screen.dart';
import 'package:pdfe/utills/Paths.dart';

import '../Screen/Public_Screen/splash/splash_binding.dart';

class Routes {
  static final baseUrl = "";

  static final routes = [
    GetPage(
      name: Paths.splashScreen,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: Paths.loginScreen,
      page: () => LoginScreen(),
      binding: LoginBindings(),
    ),
  ];
}
