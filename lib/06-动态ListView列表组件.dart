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
        appBar: AppBar(title: Text("我 Flutter 打钱！")),
        body: MyList(),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  List<Widget> _initListData() {
    List<Widget> list = <Widget>[]; // 创建一个空的列表数据，并将其作为生成器
    for (var i = 0; i <= 10; i++) {
      list.add(ListTile(
        title: Text("我是一个列表---${i}"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }
}
