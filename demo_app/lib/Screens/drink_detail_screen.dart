import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/controllers.dart';
import '../Models/models.dart';

class DrinkDetailScreen extends GetView<DrinkDetailController> {
  const DrinkDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(controller.drink.strDrink ?? ''),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.size.height / 2.5,
              width: Get.size.width,
              child: Image(
                image: NetworkImage(controller.drink.strDrinkThumb ?? ''),
                fit: BoxFit.fill,
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Basics',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strDrink ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strCategory ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strGlass ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .02),
                  const Text(
                    'Ingredients',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strIngredient1 ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strIngredient2 ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strIngredient3 ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strIngredient4 ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strIngredient5 ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .02),
                  const Text(
                    'Instructions',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strInstructions ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .02),
                  const Text(
                    'Measurements',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strMeasure1 ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strMeasure2 ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strMeasure3 ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strMeasure4 ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                  SizedBox(height: Get.size.height * .01),
                  Text(
                    controller.drink.strMeasure5 ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
