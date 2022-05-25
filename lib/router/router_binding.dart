import 'package:get/get.dart';

import 'router_logic.dart';

class RouterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RouterLogic());
  }
}
