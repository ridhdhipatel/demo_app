import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Helpers/helpers.dart';
import '../Models/models.dart';
import '../Repositories/drink_repository.dart';
import 'controllers.dart';

class HomeController extends BaseController {
  final DrinkRepository _drinkRepository = DrinkRepository();
  final TextEditingController textEditingController = TextEditingController();
  RxList<Drinks> drinks = (List<Drinks>.of([])).obs;
  RxList<Drinks> allDrinks = (List<Drinks>.of([])).obs;
  List<Drinks> searchDrinkList = [];

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
            searchDrinkList = response.data!;
            allDrinks.value = drinks;
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

  searchDrink(String value) {
    List<Drinks> itemData = [];

    drinks.value = allDrinks;
    for (var item in searchDrinkList) {
      if (item.strDrink!.toLowerCase().contains(value) ||
          item.strDrink!.toUpperCase().contains(value)) {
        if (!itemData.contains(item)) {
          itemData.add(item);
        }
      }
    }

    drinks.value = itemData.obs;
  }
}
