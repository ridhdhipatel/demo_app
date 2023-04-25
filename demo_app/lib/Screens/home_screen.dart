import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/controllers.dart';
import '../Routes/routes.dart';
import '../Widgets/widgets.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drinks'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Obx(
            () => ListView.builder(
              itemCount: controller.drinksList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(
                        PageRoutes.detail,
                        arguments: controller.drinksList[index],
                      );
                    },
                    child: Card(
                      child: ListTile(
                        leading: Container(
                          height: 50.0,
                          width: 50.0,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.green,
                            image: DecorationImage(
                              image: NetworkImage(
                                controller.drinksList[index].strDrinkThumb ??
                                    '',
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          controller.drinksList[index].strDrink ?? '',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Obx(
            () => CommonLoaderOverlay(
              visibile: controller.isLoading.value,
            ),
          )
        ],
      ),
    );
  }
}
