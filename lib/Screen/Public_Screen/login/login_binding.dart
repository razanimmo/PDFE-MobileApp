import 'package:get/get.dart';
import 'package:pdfe/Screen/Public_Screen/login/login_controller.dart';

class LoginBindings extends Bindings{
  @override
  void dependencies() {
  Get.put(LoginController());

  }

}