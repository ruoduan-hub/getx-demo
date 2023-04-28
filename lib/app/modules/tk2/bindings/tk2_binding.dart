import 'package:get/get.dart';

import '../controllers/tk2_controller.dart';

class Tk2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tk2Controller>(
      () => Tk2Controller(),
    );
  }
}
