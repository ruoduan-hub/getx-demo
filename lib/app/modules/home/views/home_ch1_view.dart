import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../tk1/controllers/tk1_controller.dart';

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

class HomeCh1View extends GetView<ctl> {
  final RxInt count;
  final Function onInitTk1Data;

  const HomeCh1View(
      {Key? key, required this.count, required this.onInitTk1Data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Obx(() => Text('当前TK1的值：$count')),
        ElevatedButton(
          onPressed: () {
            Get.toNamed('/tk1');
          },
          child: const Text('跳转TK1'),
        ),
        ElevatedButton(
          onPressed: () {
            onInitTk1Data();
          },
          child: const Text('初始化TK1的值'),
        ),
        ElevatedButton(
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text('提示'),
                  content: Text('确定要退出吗？'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('确定'),
                      onPressed: () {
                        // 点击确定按钮，执行相应的操作
                        Get.back();
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text('取消'),
                      onPressed: () {
                        // 点击取消按钮，关闭对话框
                        Get.back();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('弹窗'),
        ),
        Image.network('https://s2.loli.net/2022/08/08/axeyZOLM2uhFSgN.jpg')
      ]),
    );
  }
}
