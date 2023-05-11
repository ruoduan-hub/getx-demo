import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
    if (v.isNotEmpty) {
      list.add(v);
    } else {
      Fluttertoast.showToast(
        msg: '值不能为空 ！',
        gravity: ToastGravity.CENTER,
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0.7),
      );
    }
  }

  void onClear(TextEditingController myController, context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('提示'),
          content: Text('确定要清空吗？'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('确定'),
              onPressed: () {
                list.clear();
                myController.clear();
                Get.back();
              },
            ),
            CupertinoDialogAction(
              child: Text('取消'),
              onPressed: Get.back,
            ),
          ],
        );
      },
    );
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
                    onSubmitted: (v) {
                      _ctl.onPushName(v);
                      myController.clear();
                    },
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
                    _ctl.onClear(myController, context);
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
