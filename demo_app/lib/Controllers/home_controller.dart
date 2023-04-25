import 'package:get/get.dart';

import '../Helpers/helpers.dart';
import '../Models/models.dart';
import '../Repositories/drink_repository.dart';
import 'controllers.dart';

class HomeController extends BaseController {
  final DrinkRepository _drinkRepository = DrinkRepository();
  RxList<Drinks> drinks = (List<Drinks>.of([])).obs;

  RxList<Drinks> get drinksList => drinks;

  @override
  void onReady() {
    super.onReady();
    getDrinks();
  }

  getDrinks() {
    isLoading.value = true;
    Helpers.checkConnectivity().then((isConnected) {
      if (isConnected) {
        _drinkRepository.getDrinks().then((response) {
          isLoading.value = false;
          if (response.data != null) {
            drinks.value = response.data ?? [];
          } else {
            Helpers.showToast('${response.errorMessage}');
          }
        });
      } else {
        isLoading.value = false;
        Helpers.showToast('No Internet');
      }
    });
  }

  getDrinkById(String id) {
    var drink = drinks.firstWhere((x) => x.idDrink == id);
  }
}
