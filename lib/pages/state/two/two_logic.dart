import 'package:flutter3_test/pages/state/state_state.dart';
import 'package:get/get.dart';

import 'two_state.dart';

class TwoLogic extends GetxController {
  final TwoState state = TwoState();

  void updateName({String? name}){
    update();
  }
}
