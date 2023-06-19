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
        body: MyCom1(),
      ),
    );
  }
}

// 排列方式-----横轴
class MyCom extends StatelessWidget {
  const MyCom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 表示无穷大，跟父级元素一样大
      height: double.infinity,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment
            .spaceEvenly, // 主横轴排列方式，默认start （flex布局的justify-content）
        crossAxisAlignment: CrossAxisAlignment
            .center, // 主竖轴排列方式，默认start （flex布局的align-items）注意，如果Row外层没有父元素，是不会居中的，必须要设置一个父元素Container
        children: [
          IconContainer(
            Icons.abc_outlined,
          ),
          IconContainer(
            Icons.ac_unit_outlined,
            color: Colors.deepPurple,
          ),
          IconContainer(
            Icons.accessibility_new,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}

// 排列方式-----横轴

class MyCom1 extends StatelessWidget {
  const MyCom1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 表示无穷大，跟父级元素一样大
      height: double.infinity,
      color: Colors.amber,
      child: Column(
        // 相当于flex-direction: column;
        mainAxisAlignment: MainAxisAlignment
            .center, // 主横轴排列方式，默认start （flex布局的justify-content）
        crossAxisAlignment: CrossAxisAlignment
            .center, // 主竖轴排列方式，默认start （flex布局的align-items）注意，如果Row外层没有父元素，是不会居中的，必须要设置一个父元素Container
        children: [
          IconContainer(
            Icons.abc_outlined,
          ),
          IconContainer(
            Icons.ac_unit_outlined,
            color: Colors.deepPurple,
          ),
          IconContainer(
            Icons.accessibility_new,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}

// 自定义Icon区块
// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon, {super.key, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 100,
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      color: color,
      child: Icon(
        icon,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
