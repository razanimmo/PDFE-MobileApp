import 'package:get/get.dart';
import 'package:pdfe/controllers/userController.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(UserController());
    // Get.put(DashboardController());
  }
}
