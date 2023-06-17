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
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, i) {
        return ListTile(
          leading: Image.network(listData[i]["url"]),
          title: Text(listData[i]["title"]),
          subtitle: Text(listData[i]["description"]),
        );
      },
    );
  }
}
