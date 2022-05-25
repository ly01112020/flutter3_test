import 'package:get/get.dart';

import 'sub1_state.dart';

class Sub1Logic extends GetxController {
  final Sub1State state = Sub1State();

  @override
  void onInit() {
    print('logic route arguments:${Get.arguments}');
    super.onReady();
  }
}
