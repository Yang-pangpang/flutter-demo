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
        body: MyCom3(),
      ),
    );
  }
}

class MyCom extends StatelessWidget {
  const MyCom({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5, // 表示一行的数量,必传
      children: [
        Icon(Icons.add_a_photo),
        Icon(Icons.pedal_bike),
        Icon(Icons.ac_unit),
        Icon(Icons.home),
        Icon(MyIcon.paypal),
        Icon(MyIcon.qq),
        Icon(MyIcon.robot),
        Icon(Icons.settings),
        Icon(Icons.airport_shuttle),
        Icon(Icons.alarm_outlined),
      ],
    );
  }
}

class MyCom1 extends StatelessWidget {
  const MyCom1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      // 通过它可以快速的创建横轴子元素为固定最大长度的GridGView
      maxCrossAxisExtent: 80, // 横轴子元素的最大长度，必传
      children: [
        Icon(Icons.add_a_photo),
        Icon(Icons.pedal_bike),
        Icon(Icons.ac_unit),
        Icon(Icons.home),
        Icon(MyIcon.paypal),
        Icon(MyIcon.qq),
        Icon(MyIcon.robot),
        Icon(Icons.settings),
        Icon(Icons.airport_shuttle),
        Icon(Icons.alarm_outlined),
      ],
    );
  }
}

class MyCom2 extends StatelessWidget {
  const MyCom2({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _initData() {
      List<Widget> tempList = [];
      for (var i = 0; i <= 20; i++) {
        tempList.add(
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.deepPurpleAccent.shade700),
            child: Text(
              '第${i}个元素',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      }
      return tempList;
    }

    // return GridView.count(
    //   crossAxisCount: 2, // 一行的数量
    //   crossAxisSpacing: 10, // 水平子元素z轴的间隙大小, 可传值为0或None或2D.Z_AXIS或3D.Z_AXIS或
    //   mainAxisSpacing: 10, // 竖直间隔10个像素，默认为1.5个像素。也可以使
    //   childAspectRatio: 1, // 表示宽高比例
    //   children: _initData(),
    // );
    return GridView.extent(
      maxCrossAxisExtent: 120, // 横轴子元素的最大值，通过它可以快速的创建横轴子元素为固定最大长度的GridView
      crossAxisSpacing: 10, // 水平子元素z轴的间隙大小, 可传值为0或None或2D.Z_AXIS或3D.Z_AXIS或
      mainAxisSpacing: 10, // 竖直间隔10个像素，默认为1.5个像素。也可以使
      childAspectRatio: 1, // 表示宽高比例
      children: _initData(),
    );
  }
}

class MyCom3 extends StatelessWidget {
  const MyCom3({super.key});
  List<Widget> _initGridViewData() {
    var tempList = listData.map((item) {
      return Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.blue.shade600)),
        child: Column(
          children: [
            Image.network(
              item["url"],
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              item["title"],
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10, // 水平子元素间距
      mainAxisSpacing: 10, // 垂直子元素间距
      crossAxisCount: 2, // 一行显示多少个元素
      childAspectRatio: 1, // 宽高比
      children: _initGridViewData(),
    );
  }
}
