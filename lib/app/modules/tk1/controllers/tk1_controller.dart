import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tk1Controller extends GetxController {
  //TODO: Implement Tk1Controller
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void onInitTk1Data() => count.value = 0;
}
