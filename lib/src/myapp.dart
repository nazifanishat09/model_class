import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_use/src/pages/myCartScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      home: MyCartScreen(),);
  }
}
