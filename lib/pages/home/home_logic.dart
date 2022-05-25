import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';
import 'package:get/get.dart';

import 'home_state.dart';

class HomeLogic extends GetxController {
  // final 不可修改
  final HomeState state = HomeState();
  // late 延时初始化一个变量
  late PageController pageViewController = PageController(initialPage: 0,keepPage: true);
  // pageViewController.jumpToPage(index);

  onPageChanged(index){
    // 将 page 索引保存，便于后续使用
    state.pageIndex=index;
    update();
  }

  @override
  void onInit() {
    // 手动通知更新，界面变量需要在 GetBuilder 内使用
    // update();
    super.onReady();
  }

}
