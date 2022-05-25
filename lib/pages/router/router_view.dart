import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';
import 'package:get/get.dart';

import 'router_logic.dart';

class RouterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<RouterLogic>();
    final state = Get.find<RouterLogic>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.routerName),
      ),
      body: Container(
        child: Text('router'),
      ),
    );
  }
}
