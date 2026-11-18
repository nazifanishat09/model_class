import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_use/src/controller/model/myCartModel.dart';

class MyCartController extends GetxController {
  RxList<ProducModel> productList = <ProducModel>[].obs;
 RxInt i = 1.obs;

void increament() {
  i.value++;
}

void decreament() {
  if (i.value > 1) {
    i.value--;
  }
}

  @override
  void onInit() {
    super.onInit();

    for (var product in productList) {
      print('${product.name} : ${product.color}');
    }
    productList.add(
      ProducModel(
        id: 01,
        name: 'Nike Air Max 20',
        price: 2200,
        img: 'assets/shooe.png',
        color: Colors.blue,
      ),
    );

    productList.add(
      ProducModel(
        id: 02,
        name: 'Nike Air Max 21',
        price: 2230,
        img: 'assets/shooe.png',
        color: Colors.red,
      ),
    );
    productList.add(
      ProducModel(
        id: 03,
        name: 'Nike Air Max d23',
        price: 2900,
        img: 'assets/shooe.png',
        color: Colors.teal,
      ),
    );
    productList.add(
      ProducModel(
        id: 04,
        name: 'Nike Air Max 20',
        price: 3300,
        img: 'assets/shooe.png',
        color: Colors.deepOrange,
      ),
    );
    productList.add(
      ProducModel(
        id: 05,
        name: 'Nike Air Max 20',
        price: 8700,
        img: 'assets/shooe.png',
        color: Colors.purple,
      ),
    );

    productList.add(
      ProducModel(
        id: 06,
        name: 'Nike Air Max 20',
        price: 1200,
        img: 'assets/shooe.png',
        color: Colors.brown,
      ),
    );

    productList.add(
      ProducModel(
        id: 07,
        name: 'Nike Air Max 20',
        price: 2450,
        img: 'assets/shooe.png',
        color: Colors.lime,
      ),
    );

    productList.add(
      ProducModel(
        id: 08,
        name: 'Nike Air Max 20',
        price: 2600,
        img: 'assets/shooe.png',
        color: Colors.blueGrey,
      ),
    );
  }
}
