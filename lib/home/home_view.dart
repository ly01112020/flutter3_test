import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';
import 'package:flutter3_test/login/login_view.dart';
import 'package:flutter3_test/router/router_view.dart';
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
        drawer: Drawer(
          child: Column(
            children: [
              Container(),
              MaterialButton(
                  color: primaryColor,
                  minWidth: double.infinity,
                  onPressed: () {
                    Get.toNamed(AppRoutes.login);
                  },
                  child: const Text('登录', style: TextStyle(color: Colors.red)))
            ],
          ),
        ),
        body: GetBuilder<HomeLogic>(builder: (logic) {
          return SafeArea(
            child: PageView(
              controller: logic.pageViewController,
              onPageChanged: (index){
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
