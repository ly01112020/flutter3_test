import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';
import 'package:flutter3_test/pages/components/menu.dart';
import 'package:flutter3_test/pages/login/login_view.dart';
import 'package:flutter3_test/pages/router/router_view.dart';
import 'package:get/get.dart';
import 'home_logic.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<HomeLogic>();
    final state = Get.find<HomeLogic>().state;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
        // backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text('Flutter3 Learn'),
        ),
        drawer: Drawer(
            child: SafeArea(
              child: ZtMenuList(menuList:state.menuList),
            )
        ),
        body: GetBuilder<HomeLogic>(builder: (logic) {
          return SafeArea(
            child: PageView(
              controller: logic.pageViewController,
              onPageChanged: (index) {
                logic.onPageChanged(index);
              },
              children: [
                RouterPage(),
              ],
            ),
          );
        }));
  }
}
