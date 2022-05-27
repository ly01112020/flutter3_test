import 'package:get/get.dart';

import 'network_logic.dart';

class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NetworkLogic());
  }
}
