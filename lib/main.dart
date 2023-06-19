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
        body: MyCom2(),
      ),
    );
  }
}

// flex布局，左右自适应布局
class MyCom extends StatelessWidget {
  const MyCom({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal, // 横轴
      // direction: Axis.vertical, // 纵轴排列
      children: [
        Expanded(
          child: IconContainer(
            Icons.home, // 用了flex：1,之后，设置这个元素的宽度是没有效果的
          ),
          flex: 1,
        ),
        Expanded(
          child: IconContainer(
            Icons.abc,
            color: Colors.purple,
          ),
          flex: 3,
        )
      ],
    );
  }
}

// 右侧固定宽度，左侧自适应宽度布局
class MyCom1 extends StatelessWidget {
  const MyCom1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IconContainer(
            Icons.home, // 用了flex：1,之后，设置这个元素的宽度是没有效果的
          ),
          flex: 1,
        ),
        IconContainer(
          Icons.abc,
          color: Colors.purple,
        ),
      ],
    );
  }
}

// 行列结合布局
class MyCom2 extends StatelessWidget {
  const MyCom2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          color: Colors.purpleAccent,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 150,
                // sizeBox用来设置高度，否则会出现错位的情况
                child: IconContainer(
                  Icons.home_max_outlined,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: 150,
                  child: Column(
                    children: [
                      Expanded(
                        child: IconContainer(
                          Icons.abc,
                          color: Colors.green,
                        ),
                        flex: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: IconContainer(
                          Icons.abc,
                          color: Colors.pink,
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                )),
          ],
        )
      ],
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
      width: 120,
      height: 150,
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
