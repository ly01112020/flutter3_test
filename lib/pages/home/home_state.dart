import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';

class HomeState {
  List<ZtMenuItem> menuList = [];
  int pageIndex = 0;
  HomeState() {
    ///Initialize variables
    menuList=[
      ZtMenuItem(path: AppRoutes.router, name: AppRoutes.routerName),
      ZtMenuItem(path: AppRoutes.state, name: AppRoutes.stateName),
      ZtMenuItem(path: AppRoutes.login, name: AppRoutes.loginName),
      ZtMenuItem(path: AppRoutes.network, name: AppRoutes.networkName),
    ];
  }
}

class ZtMenuItem{
  ZtMenuItem({required this.path,required this.name});
  String path;
  String name;
}

