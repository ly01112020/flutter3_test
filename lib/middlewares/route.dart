import 'package:get/get.dart';

class RouteMiddleWare{
  static observer(Routing? routing) {
    ///你除了可以监听路由外，还可以监听每个页面上的SnackBars、Dialogs和Bottomsheets。
    print('RouteMiddleWare:${routing?.current} isSnackbar:${routing?.isDialog}');
    routing.printInfo();
  }
}