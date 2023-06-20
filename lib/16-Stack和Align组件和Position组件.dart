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

// flex布局，左右自适应布局
class MyCom extends StatelessWidget {
  const MyCom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.purple,
      child: Stack(
        children: [
          Positioned(
              // position组件基于父组件定位，如果写在最外层，则基于屏幕定位，需要定位的元素，使用positation组件包裹即可
              left: 10,
              bottom: 10,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              )),
          Positioned(right: 0, top: 150, child: Text('我是Flutter')),
        ],
      ),
    );
  }
}

class MyCom1 extends StatelessWidget {
  const MyCom1({super.key});

  @override
  Widget build(BuildContext context) {
    final size =
        MediaQuery.of(context).size; // 获取屏幕大小，如果没有定义，则使用MediaQuery对象的size属性
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.only(top: 50),
          children: [
            ListTile(
              title: Text("我是一个文字组件-----1"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----2"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----3"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----4"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----5"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----6"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----7"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----8"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----9"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----10"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----11"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----12"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----13"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----14"),
            ),
            ListTile(
              title: Text("我是一个文字组件-----15"),
            )
          ],
        ),
        Positioned(
            right: 0,
            top: 200,
            width: size.width, // position里面配置的宽高是子组件的宽高，不是position本身的宽高
            // width:double.infinity, // 在position组件中，不支持这个无限宽度，会报错
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: 44,
                      color: Colors.green,
                      child: Text("二级标题", style: TextStyle(color: Colors.red)),
                    ))
              ],
            ))
      ],
    );
  }
}

// Align属性
class MyCom2 extends StatelessWidget {
  const MyCom2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.purple.shade600,
          borderRadius: BorderRadius.circular(24)),
      child: Align(
        alignment: Alignment(-0.5, 0.5), // 坐标，可以定位元素的位置
        child: Text("Flutter"),
      ),
    );
  }
}

// Stack和Align结合使用
class MyCom3 extends StatelessWidget {
  const MyCom3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 40,
          child: Stack(
            // 如果这里使用Row组件的话，alignment属性没用
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("我的"),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text("你的"),
              ),
            ],
          ),
        ),
        // position和Stack结合使用
        SizedBox(
          width: double.infinity,
          height: 40,
          child: Stack(
            // 使用Stack组件，要么在根组件使用，要么外层必须有一个父元素，且有宽高，sizeBox和Container都可以，不能单独使用，否则会报错

            // 如果这里使用Row组件的话，alignment属性没用
            children: [
              Positioned(
                left: 10,
                child: Text("我的"),
              ),
              Positioned(
                right: 10,
                child: Text("你的"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
