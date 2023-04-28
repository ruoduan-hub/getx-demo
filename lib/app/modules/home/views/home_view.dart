import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../../tk1/controllers/tk1_controller.dart';
import './home_ch1_view.dart';
import './home_ch2_view.dart';
import './home_ch3_view.dart';

final Tk1Controller store = Get.put(Tk1Controller());

final HomeController storeHome = Get.put(HomeController());

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (storeHome.index.value == 0) {
          return HomeCh1View(
            count: store.count,
            onInitTk1Data: store.onInitTk1Data,
          );
        }

        if (storeHome.index.value == 1) {
          return HomeCh2View(
            count: storeHome.index,
          );
        }

        return const HomeCh3View();
      }),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: storeHome.index.value,
            onTap: storeHome.onChangeNavigationBar,
          )),
    );
  }
}
