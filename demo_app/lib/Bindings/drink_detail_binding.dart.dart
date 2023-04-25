import 'package:get/get.dart';

import '../Controllers/controllers.dart';

class DrinkDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrinkDetailController>(() => DrinkDetailController());
  }
}
