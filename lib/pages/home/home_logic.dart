import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_state.dart';

class HomeLogic extends GetxController {
  // final 不可修改
  final HomeState state = HomeState();
  // late 延时初始化一个变量
  late PageController pageViewController = PageController(initialPage: 0,keepPage: true);
  // pageViewController.jumpToPage(index);

  final menuList = [];

  onPageChanged(index){
    // 将 page 索引保存，便于后续使用
    state.pageIndex=index;
    update();
  }
  
}
