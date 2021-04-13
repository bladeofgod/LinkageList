import 'package:flutter/material.dart';

/// 作者：李佳奇
/// 日期：2021/4/13
/// 备注：


class DemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DemoPageState();
  }

}

class DemoPageState extends State<DemoPage> {

  final List<int> dataList = List.generate(30, (index) => index);

  Size get size => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            _buildTabs(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return Container(
      width: size.width,height: 100,
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        children: dataList.map((e) => _buildTabItem(e)).toList(),
      ),
    );
  }

  Widget _buildTabItem(int index) {

  }

}















