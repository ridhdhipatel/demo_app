import '../Bindings/bindings.dart';

class RegisterBindings {
  void appDependenciesRegister() {
    SplashBinding().dependencies();
    HomeBinding().dependencies();
    DrinkDetailBinding().dependencies();
  }
}
