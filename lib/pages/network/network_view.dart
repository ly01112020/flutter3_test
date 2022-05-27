import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'network_logic.dart';

class NetworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<NetworkLogic>();
    final state = Get.find<NetworkLogic>().state;

    return Container();
  }
}
