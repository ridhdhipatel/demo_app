import 'package:get/get.dart';

import '../Controllers/controllers.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
