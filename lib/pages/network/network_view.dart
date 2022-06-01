import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';
import 'package:get/get.dart';

import 'network_logic.dart';

class NetworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<NetworkLogic>();
    final state = Get.find<NetworkLogic>().state;

    return Scaffold(
      appBar: AppBar(title: Text(AppRoutes.networkName)),
      body: Column(

      ),
    );
  }
}
