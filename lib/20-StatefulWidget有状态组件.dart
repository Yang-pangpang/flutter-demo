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
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}

// 使用 StatelessWidget 对于要动态改变页面的数据，是无法实现的
class CountDown extends StatelessWidget {
  int countNum = 0;
  CountDown({super.key});
  onPressed() {
    this.countNum++;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "$countNum",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: 100,
        ),
        ElevatedButton.icon(
            onPressed: onPressed, icon: Icon(Icons.add), label: Text("增加"))
      ]),
    );
  }
}

// 动态改变数据需要使用 StatefulWidget（有状态组件）
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  onPressed() {
    setState(() {
      countNum++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("有状态组件"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "$countNum",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton.icon(
              onPressed: onPressed, icon: Icon(Icons.add), label: Text("增加"))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        // floatingActionButton只能用于Scaffold 组件
        onPressed: onPressed,
        child: Icon(Icons.add),
      ),
    );
  }
}
