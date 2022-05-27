import 'package:get/get.dart';
// https://github.com/jonataslaw/getx/blob/master/documentation/zh_CN/state_management.md
class StateState {
  // int count = 0;
  // bool open = false;
  // String name = '';
  // 自动更新数据注意事项 1.使用 Getx 里面额数值类型并且值要.obs ，2.界面需要使用 Obx() 包裹
  // 使用值需要 用 coutn.value 类似 react 的 ref.current
  // .obs 申请为被观察者  Obx() 观察并更新
  var count = 0.obs;
  var open = false.obs;
  var name = ''.obs;
  // 不适用value
  var userList = <UserInfo>[].obs;
  var map = {}.obs;
  List<int> list = [];
  // Map<String, String>? map ={};

  //手动更新的测试变量

  int number=0;
  String userName='';

  StateState() { }
}

class UserInfo{
  String? name;
  int? age;
  UserInfo({this.name,this.age});
}