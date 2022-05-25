import 'package:flutter3_test/pages/home/home_binding.dart';
import 'package:flutter3_test/pages/home/home_view.dart';
import 'package:flutter3_test/pages/login/login_binding.dart';
import 'package:flutter3_test/pages/login/login_view.dart';
import 'package:flutter3_test/pages/router/router_binding.dart';
import 'package:flutter3_test/pages/router/router_view.dart';
import 'package:flutter3_test/pages/router/sub1/sub1_binding.dart';
import 'package:flutter3_test/pages/router/sub1/sub1_view.dart';
import 'package:get/get.dart';
// 定义路由
class AppRoutes {
  static const String home = '/';
  static const String homeName = '首页';

  static const String login = '/login';
  static const String loginName = '登录';

  static const String router = '/router';
  static const String routerName = '路由';

  static const String sub1 = '/router/sub1';
  static const String sub1Name = '子路由1';
  static const String sub1Detail = '/router/sub1/:id';
}
// 注册路由到 getx
class AppPages {
  static final list = [
    GetPage(
        name: AppRoutes.home,
        page: () => HomePage(),
        title:AppRoutes.homeName,
        binding: HomeBinding()
    ),
    GetPage(
        name: AppRoutes.login,
        page: () => LoginPage(),
        title:AppRoutes.loginName,
        binding: LoginBinding()
    ),
    GetPage(
        name: AppRoutes.router,
        page: () => RouterPage(),
        title:AppRoutes.routerName,
        binding: RouterBinding()
    ),
    GetPage(
        name: AppRoutes.sub1,
        page: () => Sub1Page(),
        title:AppRoutes.sub1Name,
        binding: Sub1Binding()
    ),
    GetPage(
        name: AppRoutes.sub1Detail,
        page: () => Sub1Page(),
        title:AppRoutes.sub1Name,
        binding: Sub1Binding()
    )
  ];
}