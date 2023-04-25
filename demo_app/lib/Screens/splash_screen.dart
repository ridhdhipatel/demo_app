import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/controllers.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(
            image: NetworkImage(
                'https://www.alisco-it.com/wp-content/uploads/2022/01/Flutter_Featured_Logo-1024x683.png'),
          ),
        ),
      ),
    );
  }
}
