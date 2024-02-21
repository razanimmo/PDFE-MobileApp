import 'dart:io';
import 'package:get/get.dart';
import 'package:pdfe/model/userModel.dart';

import '../services/http_service.dart';
import '../services/storage_service.dart';
import '../services/util_service.dart';

class UserController extends GetxController {
  UserModel? user;
  StorageService storageService = Get.find<StorageService>();
  HTTPService http = Get.find<HTTPService>();
  UtilService util = Get.find<UtilService>();

  @override
  void onInit() {
    super.onInit();

    getUser();
  }

  removeAllProperties() {
    user = null;
    update();
  }

  void setUser(UserModel newUser) {
    user = newUser;
    storageService.setData("user", newUser.toJson());
    update();
  }

  getUser() {
    var data = storageService.getData("user");
    if (data != null) {
      user = UserModel.fromJson(data);
    }
  }
}
