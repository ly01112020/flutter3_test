import 'package:flutter3_test/home/home_binding.dart';
import 'package:flutter3_test/login/login_binding.dart';
import 'package:get/get.dart';
import '../home/home_view.dart';
import '../login/login_view.dart';
import '../router/router_view.dart';
import '../router/router_binding.dart';

// 定义路由
class AppRoutes {
  static const String home = '/';
  static const String login = '/login';

  static const String router = '/router';
}
// 注册路由到 getx
class AppPages {
  static final list = [
    GetPage(
        name: AppRoutes.home,
        page: () => HomePage(),
        title:"主页",
        binding: HomeBinding()
    ),
    GetPage(
        name: AppRoutes.login,
        page: () => LoginPage(),
        title:"登录",
        binding: LoginBinding()
    ),
    GetPage(
        name: AppRoutes.router,
        page: () => RouterPage(),
        title:"路由演示",
        binding: RouterBinding()
    )
  ];
}