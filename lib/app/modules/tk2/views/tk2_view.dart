import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tk2_controller.dart';

class Tk2View extends GetView<Tk2Controller> {
  const Tk2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tk2View'),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          Text(
            'Tk2View is working',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
