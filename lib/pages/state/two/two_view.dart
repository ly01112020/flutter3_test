import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';
import 'package:flutter3_test/pages/components/button.dart';
import 'package:flutter3_test/pages/state/state_logic.dart';
import 'package:get/get.dart';

import 'two_logic.dart';

class TwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<TwoLogic>();
    final state = Get
        .find<TwoLogic>()
        .state;
    final parentLogic = Get.find<StateLogic>();

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.stateTwoName),
      ),
      body: Column(
        children: [
          GetBuilder<TwoLogic>(
            assignId: true,
            builder: (logic) {
              return Column(
                children: [
                  const Text('Sub Logic  这里是二级界面 GetBuilder<TwoLogic>'),
                  LyButton('子界面修改userName', () {
                    // 这个至更新里 parent 的值，这个界面并没有更新因为这个 GetBuilder 是 受TwoLogic 影响
                    parentLogic.updateUserName(name:'界面修改userName ${Random().nextInt(100)}');
                    // 所以这里要自身更新一下
                    // logic.update();
                  }),
                  LyButton('没有更新是没有调用 parent 的 update 点此更新', () {
                    // 所以这里要自身更新一下
                    logic.update();
                  }),
                  Text('parent state => userName:${parentLogic.state.userName}'),
                  GetBuilder<StateLogic>(
                    assignId: true,
                    builder: (logic) {
                      return Text('嵌套测试 ${parentLogic.state.userName}');
                    },
                  ),
                ],
              );
            },
          ),
          const Divider(),
          GetBuilder<StateLogic>(
            assignId: true,
            builder: (logic) {
              return Column(
                children: [
                  const Text('Parent Logic 这里是二级界面 GetBuilder<StateLogic>'),
                  LyButton('子界面修改userName', () {
                    // 看上 使用的是 GetBuilder<StateLogic>
                    parentLogic.updateUserName(name:'界面修改userName ${Random().nextInt(100)}');
                  }),
                  Text('parent state => userName:${parentLogic.state.userName}'),
                ],
              );
            },
          ),
        ],
      )
    );
  }
}
