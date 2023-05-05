import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/webview_controller.dart';

class WebviewView extends GetView {
  const WebviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final ctl = Get.put(WebviewController());

    print(args);
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebviewView'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
            Get.changeTheme(ThemeData.dark());
          },
        ),
      ),
      body: WebViewWidget(controller: ctl.controller),
    );
  }
}
