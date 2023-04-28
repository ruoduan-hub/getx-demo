import 'package:get/get.dart';

import '../controllers/tk1_controller.dart';

class Tk1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Tk1Controller>(
      () => Tk1Controller(),
    );
  }
}
