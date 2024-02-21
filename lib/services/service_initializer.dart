import 'package:get/get.dart';
import 'package:pdfe/services/http_service.dart';
import 'package:pdfe/services/storage_service.dart';
import 'package:pdfe/services/util_service.dart';

initializeServices() async {
  await Get.putAsync(() => StorageService().init());
  await Get.putAsync(() => UtilService().init());
  await Get.putAsync(() => HTTPService().init());
}
