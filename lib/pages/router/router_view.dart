import 'package:flutter/material.dart';
import 'package:flutter3_test/config/routes.dart';
import 'package:flutter3_test/pages/components/button.dart';
import 'package:flutter3_test/pages/router/sub1/sub1_binding.dart';
import 'package:flutter3_test/pages/router/sub1/sub1_view.dart';
import 'package:get/get.dart';

import 'router_logic.dart';

// GetX 路由学习
class RouterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<RouterLogic>();
    final state = Get.find<RouterLogic>().state;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.routerName),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              LyButton('根据别名跳转【建议】',(){
                Get.toNamed(AppRoutes.sub1);
              }),
              LyButton('根据别名跳转&携带数据(任意)',(){
                Get.toNamed(AppRoutes.sub1,arguments: 'string data');
              }),
              LyButton('根据别名跳转&携带数据 List',(){
                Get.toNamed(AppRoutes.sub1,arguments: List.generate(2, (index) => index*10));
              }),
              LyButton('${AppRoutes.sub1}?id=123&type=10',(){
                Get.toNamed('${AppRoutes.sub1}?id=123&type=10');
              }),
              // routers 里面需要配置
              LyButton(AppRoutes.sub1Detail,(){
                Get.toNamed('${AppRoutes.sub1}/1000');
              }),
              LyButton('根据界面实体跳转',(){
                Get.to(Sub1Page(),binding: Sub1Binding());
              }),

              LyButton('SnackBars',(){
                Get.snackbar(
                  '系统提示', '你是最靓的仔',
                  colorText: Colors.white,duration: Duration(seconds: 2),
                  backgroundColor: Colors.green
                );
              }),
              LyButton('Dialogs',(){
                Get.defaultDialog(
                  title: '系统提示',
                   content:  Text('你是最靓的仔你是最靓的仔你是最靓的仔?'),
                   onConfirm: (){
                    print('是的');
                   },
                  onCancel: (){
                    print('cancel');
                  }
                );
              })
            ],
          ),
        )
      ),
    );
  }

}
