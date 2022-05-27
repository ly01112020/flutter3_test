import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';
import 'package:flutter3_test/pages/state/state_state.dart';
import 'package:get/get.dart';
import '../components/button.dart';

import 'state_logic.dart';

class StatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<StateLogic>();
    final state = Get
        .find<StateLogic>()
        .state;

    return Scaffold(
      appBar: AppBar(
          title: const Text(AppRoutes.stateName)
      ),
      body: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("自动更新状态 obs 的使用"),
          LyButton('不在Obx里面的count:${state.count.value},值改变了但是界面未变化', () {
            // obs 类型原始值值在使用 .value获取和使用 类似 react的 ref.current
            state.count.value += 1;
          }),
          Divider(),
          Obx(() =>
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LyButton('int 自动更新 ${state.count.value} ', () {
                    // obs 类型原始值值在使用 .value获取和使用 类似 react的 ref.current
                    state.count.value += 1;
                  }),
                  LyButton('string 自动更新 ${state.name.value} ', () {
                    state.name.value = '我是名称${Random().nextInt(999)}';
                  }),
                  LyButton('map 自动更新 ${state.map.value} ', () {
                    state.map.value =
                    state.map.isEmpty ? {"name": "也算懂一点"} : {};
                  }),
                  LyButton('引用类型 自动更新 ${state.userList.map((element) => element
                      .name)} ', () {
                    state.userList.add(
                        UserInfo(name: '名称${Random().nextInt(100)}', age: 18));
                    // logic.updateList();
                  }),
                  // LyButton('状态管理,boolean 自动更新${state.open?'开':'关'} ',(){
                  //   state.open = !state.open;
                  // })
                ],
              )),
          Divider(),
          Text("手动更新 update() 需要在 GetBuilder 中,性能高，复杂界面使用这种方式"),
          GetBuilder<StateLogic>(
            assignId: true,
            builder: (logic) {
              return Column(
                children: [
                  LyButton('int 手动更新 ${state.number} ', () {
                    logic.updateNumber();
                  }),
                  LyButton('String 手动更新 ${state.userName} ', () {
                    logic.updateUserName();
                  }),
                  LyButton('在二级界面中点击更新 返回后看这里《${state.userName}》', () {
                    Get.toNamed(AppRoutes.stateTwo);
                  }),
                ],
              );
            },
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('change'),
        onPressed: () {
          // 查找并更新
          Get
              .find<StateLogic>()
              .state
              .count++;
        },
      ),
    );
  }
}
