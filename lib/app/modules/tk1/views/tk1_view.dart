import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tk1_controller.dart';

final Tk1Controller store = Get.put(Tk1Controller());

class Tk1View extends GetView<Tk1Controller> {
  const Tk1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tk1View'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Obx(() => Text(
                'value: ${store.count}',
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
            child: Text('increment'),
            onPressed: () => store.increment(),
          )
        ],
      )),
    );
  }
}
