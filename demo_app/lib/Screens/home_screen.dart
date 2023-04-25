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
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      // border: Border.all(
                      //   color: AppColors.textGreyColor,
                      //   width: 1.5,
                      // ),
                      color: Colors.blueGrey.withOpacity(.2),
                    ),
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search_rounded,
                          size: 20.0,
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: controller.textEditingController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, left: 10.0),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              hintText: 'Search Products...',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                controller.searchDrink(value);
                              } else {
                                controller.getDrinks();
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
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
                                      controller.drinksList[index]
                                              .strDrinkThumb ??
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
              ],
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
