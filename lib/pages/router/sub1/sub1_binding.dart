import 'package:get/get.dart';

import 'sub1_logic.dart';

class Sub1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Sub1Logic());
  }
}
