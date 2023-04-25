import 'package:demo_app/Bindings/bindings.dart';
import 'package:get/get.dart';

import '../Models/models.dart';
import '../Screens/screens.dart';
import 'routes.dart';

class AppRoutes {
  static List<GetPage> getPages = [
    GetPage(
      name: PageRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: PageRoutes.list,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: PageRoutes.detail,
      page: () => const DrinkDetailScreen(),
      binding: DrinkDetailBinding(),
    ),
  ];
}
