import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final index = 0.obs;

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

  void onChangeNavigationBar(int idx) {
    index.value = idx;
  }
}
