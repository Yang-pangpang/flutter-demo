import 'package:demo/iconfont.dart';
import 'package:flutter/material.dart';
import './req/listData.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("我 Flutter 打钱！")),
        body: MyCom(),
      ),
    );
  }
}

class MyCom extends StatelessWidget {
  const MyCom({super.key});

  @override
  Widget build(BuildContext context) {
    return IconContainer(
      Icons.abc_outlined,
      color: Colors.white,
    );
  }
}

// 自定义Icon区块
// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon, {super.key, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 80,
      color: color,
      child: Icon(
        icon,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
