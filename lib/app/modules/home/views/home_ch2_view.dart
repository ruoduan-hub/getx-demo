import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ctl extends GetxController {
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
}

class HomeCh2View extends GetView<ctl> {
  final RxInt count;

  const HomeCh2View({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Text('首页组件2 index:$count'),
        ElevatedButton(
          onPressed: () {
            Get.toNamed('/tk1');
          },
          child: const Text('跳转TK1'),
        )
      ]),
    );
  }
}
