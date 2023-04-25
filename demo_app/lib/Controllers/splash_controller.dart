import 'dart:async';

import 'package:get/get.dart';

import '../Routes/routes.dart';
import 'controllers.dart';

class SplashController extends BaseController {
  late Timer _timer;

  @override
  void onReady() {
    super.onReady();
    startTimer();
  }

  startTimer() {
    _timer = Timer(const Duration(seconds: 3), () {
      navigatorUser();
    });
  }

  navigatorUser() {
    Get.offAndToNamed(PageRoutes.list);
  }

  @override
  void onClose() {
    super.onClose();
    _timer.cancel();
  }
}
