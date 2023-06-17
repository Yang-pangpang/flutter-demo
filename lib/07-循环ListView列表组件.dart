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

class MyCom extends StatelessWidget {
  const MyCom({super.key});
  @override
  Widget build(BuildContext context) {
    // 写在build之外会报错，
    List<Widget> _initListData() {
      // for循环写法
      // for (var i = 0; i < listData.length; i++) {
      //   tempList.add(ListTile(
      //     leading: Image.network("${listData[i]["url"]}"),
      //     title: Text("${listData[i]["title"]}"),
      //     subtitle: Text("${listData[i]["description"]}"),
      //   ));
      // }
      // return tempList;

      // map写法
      var tempList = listData.map((d) => ListTile(
            leading: Image.network(d["url"]),
            title: Text(d["title"]),
            subtitle: Text(d["description"]),
          ));
      return tempList.toList(); // map function 将函数应用于一
    }

    return ListView(children: _initListData());
  }
}
