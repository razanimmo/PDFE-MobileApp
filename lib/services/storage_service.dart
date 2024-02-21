import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pdfe/model/userModel.dart';
import 'package:pdfe/utills/Paths.dart';
import 'package:pdfe/utills/storage_keys.dart';

class StorageService extends GetxService {
  GetStorage storage = GetStorage();

  Future<StorageService> init() async {
    await GetStorage.init();
    // await getStore();
    await 1.delay();
    return this;
  }

  bool isAuthenticated() {
    var token = getData(StorageKeys.token);
    return token != null ? true : false;
  }

  getData(String key) {
    var data = storage.read(key);
    if (data != null) {
      return json.decode(data.toString());
    }
    return data;
  }

  setData(String key, dynamic data) {
    var encodedData = json.encode(data);
    storage.write(key, encodedData);
  }

  void setUser(UserModel newUser) {
    // user = newUser;
    setData("user", newUser.toJson());
    // Get.forceAppUpdate();
  }

  UserModel? getUser() {
    var data = getData("user");
    if (data != null) {
      UserModel user = UserModel.fromJson(data);
      return user;
    }
    return null;
  }

  logout() {
    storage.remove("user");
    Get.offAllNamed(Paths.loginScreen);
  }
}
