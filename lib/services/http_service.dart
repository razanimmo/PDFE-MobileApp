import 'package:get/get.dart';
import 'package:pdfe/model/mediaModel.dart';
import 'package:pdfe/model/userModel.dart';
import 'package:pdfe/services/storage_service.dart';
import 'package:pdfe/services/util_service.dart';
import 'package:pdfe/utills/Routes.dart';
import 'package:pdfe/utills/storage_keys.dart';

class HTTPService extends GetConnect {
  StorageService storage = Get.find<StorageService>();
  UtilService util = Get.find<UtilService>();

  Future<HTTPService> init() async {
    httpClient.timeout = Duration(seconds: 20);
    timeout = Duration(seconds: 20);
    httpClient.addRequestModifier<dynamic>((request) async {
      dynamic header = await getRequestHeader();
      if (header != null && header.length > 0) {
        request.headers.addAll(header);
      }
      return request;
    });
    httpClient.addResponseModifier<dynamic>((request, response) async {
      if (response.statusCode == 401) {
        // Get.snackbar("Error!", "Token Expired Please Login Again");
        storage.logout();
      }
      return response;
    });
    return this;
  }

  Future<dynamic> getRequestHeader() {
    dynamic token = storage.getData("token");
    UserModel? user = storage.getUser();
    // var user = storage.getUser();
    dynamic headers = {};
    if (token != null && user != null) {
      // if (user.loginMethod == "email") {
      //   headers = {'authorization': "Bearer $token"};
      // } else if (user.loginMethod == "social" || user.loginMethod == "phone") {
      headers = {'authorization': "Bearer $token"};
      // }
      // if (user!.uid != null && user.uid != "") {
      // }

    }
    return Future.value(headers);
  }

  Future<dynamic> signup(dynamic body) async {
    var res = await this.post(Routes.baseUrl + 'auth/signUp', body);
    return res;
  }

  Future<Response> firebaseLogin(body) async {
    var res = await post(Routes.baseUrl + 'auth/firebaseLogin', body);
    return res;
  }

  Future<dynamic> updateUserProfile(body) async {
    var res = await put(
      Routes.baseUrl + "auth/updateUser",
      body,
    );
    return res;
  }

  Future<dynamic> uploadFile(MediaModel body) async {
    var res = await this.post(Routes.baseUrl + 'auth/signUp', body);
    return res;
  }

  Future<dynamic> getFiles() async {
    var res = await this.get(
      Routes.baseUrl + 'auth/signUp',
    );
    return res;
  }

  //
}
