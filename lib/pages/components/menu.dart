import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/home_state.dart';

class ZtMenuList extends StatelessWidget{
  const ZtMenuList({
    Key? key,
    required this.menuList
  }) : super(key: key);

  final List<ZtMenuItem> menuList;

  @override
  Widget build(BuildContext context) {
    return _renderBg(
        Column(
          children: menuList.map((e) => _renderMenuItem(e)).toList(),
        )
    );
  }

  Widget _renderBg(Widget widget){
    return Container(
      decoration:BoxDecoration(
        color: Colors.blue,
      ),
      child: widget,
    );
  }

  // 每个独立功能抽成方法
  Widget _renderMenuItem(ZtMenuItem item){
    final color = Colors.white;
    return InkWell(
      onTap: (){
        Get.toNamed(item.path);
      },
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Icon(Icons.menu,color:color),
          Expanded(child: Container(
            height: 48.00,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding:const EdgeInsets.all(8.0),
            // decoration: BoxDecoration(
            //     border: Border(
            //         bottom: BorderSide(color: color)
            //     )
            // ),
            child: Text(item.name,style: const TextStyle(color: Colors.white),),
          ),
          )
        ],
      ),
    );
  }

}

