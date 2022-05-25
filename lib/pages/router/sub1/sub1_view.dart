import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sub1_logic.dart';

class Sub1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<Sub1Logic>();
    final state = Get.find<Sub1Logic>().state;
    var arguments = Get.arguments;
    return Scaffold(body: Center(
      child:Column(
        children: [
          Container(
            child: Text('arguments: ${arguments}'),
          ),
          Container(
            child: Text('params: ${Get.parameters} id:${Get.parameters['id']}'),
          ),
          ElevatedButton(
            onPressed: (){
              Get.back();
            },
            child: const Text('返回'),
          ),
        ],
      )
    ));
  }
}
