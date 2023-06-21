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
        body: ButtonCom(),
      ),
    );
  }
}

// 按钮组件
class ButtonCom extends StatelessWidget {
  const ButtonCom({super.key});
  onPressed() {
    print("按钮");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(onPressed: onPressed, child: Text("普通按钮")),
          TextButton(onPressed: onPressed, child: Text("文本按钮")),
          OutlinedButton(onPressed: onPressed, child: Text("带边框的按钮")),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.accessible_forward,
                color: Colors.pink,
              )), // 图标按钮
        ]),
        SizedBox(
          height: 20,
        ),
        Row(
          // 带图标的按钮
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: onPressed,
              icon: Icon(
                Icons.send,
                color: Colors.blue,
              ),
              label: Text("发送"),
            ),
            TextButton.icon(
                onPressed: onPressed,
                icon: Icon(Icons.info),
                label: Text("消息")),
            OutlinedButton.icon(
                onPressed: onPressed,
                icon: Icon(Icons.access_alarm),
                label: Text("闹钟"))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          // 修改按钮文字大小背景颜色等
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blue), // 背景色
                    foregroundColor:
                        MaterialStatePropertyAll(Colors.amber)), // 文字颜色
                onPressed: onPressed,
                icon: Icon(Icons.send),
                label: Text("发送"))
          ],
        ),
        Row(
          // 自定义按钮，修改大小等
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.all(30),
              height: 40,
              width: 100,
              child: ElevatedButton.icon(
                  onPressed: onPressed,
                  icon: Icon(Icons.settings),
                  label: Text("设置")),
            ),
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton.icon(
                  onPressed: onPressed,
                  icon: Icon(Icons.search),
                  label: Text("搜索")),
            )
          ],
        ),
        // 自适应大小按钮
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 40,
                  child: ElevatedButton.icon(
                      onPressed: onPressed,
                      icon: Icon(Icons.apple),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      label: Text("Iphone")),
                ))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 44,
              child: ElevatedButton.icon(
                onPressed: onPressed,
                icon: Icon(MyIcon.paypal),
                label: Text("PayPal"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        // 配置按钮圆角属性
                        borderRadius: BorderRadius.circular(10)))),
              ),
            ),
            Container(
              height: 60,
              child: ElevatedButton.icon(
                onPressed: onPressed,
                icon: Icon(MyIcon.qq),
                label: Text("QQ"),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                    shape: MaterialStatePropertyAll(// 圆形按钮，可以设置边框色
                        CircleBorder(side: BorderSide(color: Colors.red)))),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(
              onPressed: onPressed,
              icon: Icon(MyIcon.robot),
              label: Text("Robot"),
              style: ButtonStyle(side: MaterialStatePropertyAll(// 修改边框颜色
                  BorderSide(width: 1, color: Colors.blue))),
            )
          ],
        )
      ],
    );
  }
}
