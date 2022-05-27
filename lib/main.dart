import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';
import 'package:flutter3_test/middlewares/route.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: AppRoutes.home,
    locale: const Locale('zh',"CN"),
    getPages: AppPages.list,
    builder: (context,child)=>GestureDetector(
      onTap: (){
        hideKeyboard(context); // 关闭键盘
      },
      child: child,
    ),
    routingCallback:RouteMiddleWare.observer
  ));
}
void hideKeyboard(BuildContext context) {
  // 从上下文中获取 焦点节点
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}