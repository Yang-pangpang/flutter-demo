import 'package:flutter/material.dart';
import './iconfont.dart'; // 引入自定义的icon

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
        appBar: AppBar(title: Text("This Is Flutter")),
        body: MyHomePage(),
      ),
    );
  }
}

// 使用内置图标
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 40),
      Icon(
        // 内置icon，可以直接使用
        Icons.accessibility_new,
        size: 40, // size改变大小
        color: Colors.greenAccent.shade400, // color改变颜色
      ),
      SizedBox(
        height: 40,
      ),
      Icon(
        Icons.access_alarm,
        size: 60,
        color: Colors.pink.shade300,
      ),
      SizedBox(
        height: 40,
      ),
      Icon(
        MyIcon.paypal,
        size: 60,
        color: Colors.blue,
      ),
      SizedBox(
        height: 40,
      ),
      Icon(
        MyIcon.qq,
        size: 60,
        color: Colors.black,
      ),
      SizedBox(
        height: 40,
      ),
      Icon(
        MyIcon.robot,
        size: 60,
        color: Colors.pink,
      )
    ]);
  }
}
