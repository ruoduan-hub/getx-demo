import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ctl extends GetxController {
  List list = [].obs;

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

  void onPushName(String v) {
    list.add(v);
  }

  void onClear(TextEditingController myController) {
    list.clear();
    myController.clear();
  }
}

class HomeCh2View extends GetView {
  HomeCh2View({
    Key? key,
    required this.count,
  }) : super(key: key);

  final TextEditingController myController = TextEditingController();
  final RxInt count;

  final ctl _ctl = Get.put(ctl());

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
        ),
        Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Expanded(
              flex: 3,
              child: SizedBox(
                  height: 50,
                  child: TextField(
                    controller: myController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your name',
                      labelText: 'Name',
                    ),
                    onSubmitted: _ctl.onPushName,
                  ))),
          Expanded(
            flex: 1,
            child: SizedBox(
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    _ctl.onClear(myController);
                  },
                  child: const Text('Clear'),
                )),
          )
        ]),
        Expanded(
            child: Obx(() => ListView(
                children: _ctl.list
                    .map((value) => ListTile(
                          title: Text(value),
                        ))
                    .toList())))
      ]),
    );
  }
}
