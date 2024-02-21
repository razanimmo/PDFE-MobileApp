import 'dart:async';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pdfe/controllers/controllerInitializer.dart';
import 'package:pdfe/services/service_initializer.dart';
import 'package:pdfe/translations/translation.dart';
import 'package:pdfe/utills/Paths.dart';
import 'package:pdfe/utills/Routes.dart';
import 'package:pdfe/utills/appConfig.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );
  Timer(const Duration(seconds: 3), () => Get.forceAppUpdate());
  // await Firebase.initializeApp();
  await initializeServices();
  runApp(const PDFEApp());
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // FlutterNativeSplash.remove();
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.doubleBounce
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..userInteractions = false
    ..dismissOnTap = false;
}

class PDFEApp extends StatelessWidget {
  const PDFEApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PDFE',
      theme: AppConfig.themeData,
      getPages: Routes.routes,
      themeMode: ThemeMode.light,
      initialRoute: Paths.splashScreen,
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "US"),
      translations: AppTranslation(),
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings(),
      defaultTransition: Transition.fade,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      builder: EasyLoading.init(),
    );
  }
}
