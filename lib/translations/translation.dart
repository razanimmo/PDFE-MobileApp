import 'package:get/get.dart';

import 'ar.dart';
import 'en.dart';

class AppTranslation extends Translations {
  Map<String, Map<String, String>> get keys => {
        'en_US': En().translation,
        'ar_AR': Ar().translation,
      };
}
