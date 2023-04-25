import 'package:get/get.dart';

import '../Models/models.dart';
import 'controllers.dart';

class DrinkDetailController extends BaseController {
  Drinks drink = Drinks();
  @override
  void onInit() {
    super.onInit();
    drink = Get.arguments as Drinks;
  }
}
