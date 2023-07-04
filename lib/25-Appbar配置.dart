import 'package:demo/iconfont.dart';
import 'package:flutter/material.dart';
import './req/listData.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // 是否显示debug显示条，默认是开启的
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: HomePage());
  }
}

// StatefulWidget实现动态列表
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 配置头部左侧图标按钮   图标在前，文字在后
        leading: IconButton(
          icon: Icon(Icons.apple),
          onPressed: () => {},
        ),
        backgroundColor: Colors.purple, // 整体背景色
        title: Text("header"),
        actions: [
          // 如果右侧有多个图标，直接放在数组里面就可以
          // 右侧的按钮图标
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () => {},
          ),
        ],
      ),
      body: Text("content"),
    );
  }
}
