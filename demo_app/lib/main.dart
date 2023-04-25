import 'package:demo_app/Bindings/bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'RegisterBinding/register_binding.dart';
import 'Routes/routes.dart';
import 'Screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  RegisterBindings().appDependenciesRegister();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialBinding: SplashBinding(),
      getPages: AppRoutes.getPages,
    );
  }
}
