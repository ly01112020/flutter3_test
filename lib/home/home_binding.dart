import 'package:flutter3_test/login/login_logic.dart';
import 'package:flutter3_test/router/router_logic.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeLogic());
    Get.lazyPut(() => LoginLogic());
    Get.lazyPut(() => RouterLogic());
  }
}
