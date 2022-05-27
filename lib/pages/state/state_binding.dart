import 'package:flutter3_test/pages/state/two/two_logic.dart';
import 'package:get/get.dart';

import 'state_logic.dart';

class StateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StateLogic());
  }
}
