import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:quick_actions/quick_actions.dart';

import 'package:get_xproject/utils/request.dart';

import 'package:flutter_ume/flutter_ume.dart'; // UME 框架
import 'package:flutter_ume_kit_ui/flutter_ume_kit_ui.dart'; // UI 插件包
import 'package:flutter_ume_kit_perf/flutter_ume_kit_perf.dart'; // 性能插件包
import 'package:flutter_ume_kit_show_code/flutter_ume_kit_show_code.dart'; // 代码查看插件包
import 'package:flutter_ume_kit_device/flutter_ume_kit_device.dart'; // 设备信息插件包
import 'package:flutter_ume_kit_console/flutter_ume_kit_console.dart'; // debugPrint 插件包
import 'package:flutter_ume_kit_dio/flutter_ume_kit_dio.dart'; // Dio 网络请求调试工具

void main() {
  setPathUrlStrategy();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // 初始化 Quick Actions
  final QuickActions quickActions = QuickActions();
  quickActions.initialize((String shortcutType) {
    if (shortcutType == 'action1') {
      Get.toNamed('/tk1');
    } else if (shortcutType == 'action2') {
      Get.toNamed('/tk2');
    }
  });

  quickActions.setShortcutItems([
    const ShortcutItem(
      type: 'action1',
      localizedTitle: 'to tk1 page',
      icon: 'icon_1',
    ),
    const ShortcutItem(
      type: 'action2',
      localizedTitle: 'to tk2 page',
      icon: 'icon_2',
    ),
  ]);

  if (kDebugMode) {
    PluginManager.instance // 注册插件
      ..register(WidgetInfoInspector())
      ..register(WidgetDetailInspector())
      ..register(ColorSucker())
      ..register(AlignRuler())
      ..register(ColorPicker()) // 新插件
      ..register(TouchIndicator()) // 新插件
      ..register(Performance())
      ..register(ShowCode())
      ..register(MemoryInfoPage())
      ..register(CpuInfoPage())
      ..register(DeviceInfoPanel())
      ..register(Console())
      ..register(DioInspector(dio: request())); // 传入你的 Dio 实例
    // flutter_ume 0.3.0 版本之后
    runApp(UMEWidget(child: MyApp(), enable: true)); // 初始化
  } else {
    runApp(MyApp());
  }
  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
