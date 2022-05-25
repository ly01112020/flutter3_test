import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';
import 'package:get/get.dart';

import 'login_logic.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<LoginLogic>();
    final state = Get.find<LoginLogic>().state;
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      // backgroundColor: primaryColor,
      appBar: AppBar(title: const Text(AppRoutes.loginName)),
      body: Container(
        child: MaterialButton(
          onPressed: (){
            Get.back();
          },
          child: const Text('返回'),
        ),
      ),
    );
  }
}
