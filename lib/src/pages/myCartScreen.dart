import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_use/src/controller/myCartController.dart';

class MyCartScreen extends StatelessWidget {
  MyCartScreen({super.key});
  final MyCartController myCartController = Get.put(MyCartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Cart'),

        leading: Icon(Icons.arrow_back_ios),
        actions: [Icon(Icons.delete)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                //height: 310,
                child: Obx(() {
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: myCartController.productList.length,

                    itemBuilder: (c, v) {
                      final product = myCartController.productList[v];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        child: Container(
                          height: 120,
                          width: Get.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: product.color,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    Positioned(
                                      left: 7,
                                      top: 1,
                                      bottom: -30,
                                      right: 2,
                                      child: Image.asset(
                                        product.img.toString(),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      product.name.toString(),
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '৳${product.price}',
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          205,
                                          203,
                                          203,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {
                                          myCartController.increament();
                                        },
                                        icon: Icon(Icons.add, size: 18),
                                      ),
                                    ),

                                    Obx(
                                      () => Text(
                                        '${myCartController.i.value.toString()}',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {},
                                        icon: Icon(Icons.remove, size: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),

              Text("data"),
            ],
          ),
        ),
      ),
    );
  }
}
