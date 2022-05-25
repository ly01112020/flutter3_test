import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_logic.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<LoginLogic>();
    final state = Get.find<LoginLogic>().state;
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        child: MaterialButton(
          onPressed: (){
            Get.back();
          },
          child: Text('返回'),
        ),
      ),
    );
  }
}
