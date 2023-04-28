import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/tk1/bindings/tk1_binding.dart';
import '../modules/tk1/views/tk1_view.dart';
import '../modules/tk2/bindings/tk2_binding.dart';
import '../modules/tk2/views/tk2_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TK1,
      page: () => const Tk1View(),
      binding: Tk1Binding(),
    ),
    GetPage(
      name: _Paths.TK2,
      page: () => const Tk2View(),
      binding: Tk2Binding(),
    ),
  ];
}
