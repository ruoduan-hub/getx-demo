import 'dart:convert';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewController extends GetxController {
  //TODO: Implement WebviewController

  @override
  void onInit() {
    print('onInit');
    controller = WebViewController()
      ..addJavaScriptChannel('text',
          onMessageReceived: (JavaScriptMessage message) {
        // 接收 js 参数
        print(message.message);
      })
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://juejin.cn'));
    super.onInit();
  }

  @override
  void onReady() {
    print('onReady');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose');
    super.onClose();
  }

  // @override
  // void dispose() {
  //   print('dispose');
  //   super.dispose();
  // }

  late WebViewController controller;
}
