import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tk1_controller.dart';

final Tk1Controller store = Get.put(Tk1Controller());

List<Map> ll = [
  {'name': '张三', 'id': '1'},
  {'name': '张4', 'id': '2'},
  {'name': '张5', 'id': '3'},
];

class Tk1View extends GetView<Tk1Controller> {
  const Tk1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> l1 = List.generate(store.count.toInt(),
        (index) => {'name': 'name-$index', 'id': index}).toList();

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
            ),
            Obx(() => Expanded(
                  child: ListView.builder(
                    itemCount: store.count.toInt(),
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text('ID: $index'),
                      );
                    },
                  ),
                )),
            // Column(
            //   children: ll.map((item) => Text(item['name'])).toList(),
            // ),
            // Expanded(
            //     child: ListView(
            //         children: l1
            //             .map((e) => ListTile(
            //                   title: Text(e['name']),
            //                 ))
            //             .toList())),
          ],
        ),
      ),
    );
  }
}
