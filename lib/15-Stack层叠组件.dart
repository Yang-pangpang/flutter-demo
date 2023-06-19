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

// flex布局，左右自适应布局
class MyCom extends StatelessWidget {
  const MyCom({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // 使用改组件，所有的子元素会层叠在一起，
      // 层叠组件
      alignment: Alignment.center, // 让子元素显示的位置，center表示居中
      children: [
        Container(
          height: 300,
          width: 300,
          color: Colors.purple,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.orange,
        ),
        Text('我是Flutter')
      ],
    );
  }
}
