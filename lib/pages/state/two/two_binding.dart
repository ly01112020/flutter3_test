import 'package:flutter3_test/pages/state/state_logic.dart';
import 'package:get/get.dart';

import 'two_logic.dart';

class TwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwoLogic());
    Get.lazyPut(() => StateLogic());
  }
}
