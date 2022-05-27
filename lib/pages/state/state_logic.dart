import 'dart:math';

import 'package:get/get.dart';
import 'state_state.dart';

class StateLogic extends GetxController {
  final StateState state = StateState();

  void updateList(){
    state.userList.add(UserInfo(name: '张三',age: 18));
  }

  // 测试手动更新
  void updateNumber(){
    state.number++;
    update();
  }
  void updateUserName({String? name}){
    state.userName=name != null?name:'userName ${Random().nextInt(100)}';
    update();
  }
}
