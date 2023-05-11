import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:quick_actions/quick_actions.dart';

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

  runApp(MyApp());
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
