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
        body: WrapCom2(),
      ),
    );
  }
}

class WrapCom extends StatelessWidget {
  const WrapCom({super.key});
  onPressed() {
    print("我是按钮");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Wrap(
          spacing: 10, // Wrap  X轴间距
          runSpacing: 10, // Y轴间距
          direction: Axis.horizontal, // 排列方式（横轴还是竖轴）
          alignment: WrapAlignment.center, // 水平居中显示
          children: [
            ButtonCom(
              "春风吹",
              onPressed: () {
                print("这是按钮1");
              },
            ),
            ButtonCom(
              "我害怕鬼",
              onPressed: () {
                print("这是按钮2");
              },
            ),
            ButtonCom(
              "手扶拖拉机司机",
              onPressed: () {
                print("这是按钮3");
              },
            ),
            ButtonCom(
              "金足印象",
              onPressed: () {
                print("这是按钮4");
              },
            ),
            ButtonCom(
              "第一次爱的人",
              onPressed: () {
                print("这是按钮5");
              },
            ),
          ],
        ));
  }
}

// 自定义按钮组件
class ButtonCom extends StatelessWidget {
  String text; // 表示传入的文字
  void Function()? onPressed; // 表示传入的方法
  ButtonCom(this.text, {super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.grey.shade200),
            foregroundColor: MaterialStatePropertyAll(Colors.black45)),
        onPressed: onPressed,
        icon: Icon(Icons.music_note),
        label: Text(text));
  }
}

// 实现电商搜索页面布局
class WrapCom2 extends StatelessWidget {
  const WrapCom2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Row(
          children: [
            Text(
              "热搜",
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        Divider(
          color: Colors.grey,
        ),
        Wrap(
          spacing: 20,
          runSpacing: 10,
          children: [
            Button("游戏机", onPressed: () {
              print("游戏机");
            }),
            Button("电脑", onPressed: () {
              print("电脑");
            }),
            Button("显卡", onPressed: () {
              print("显卡");
            }),
            Button("手机", onPressed: () {
              print("手机");
            }),
            Button("显示器", onPressed: () {
              print("显示器");
            }),
            Button("耳机", onPressed: () {
              print("耳机");
            }),
            Button("男装", onPressed: () {
              print("男装");
            }),
            Button("双肩背包", onPressed: () {
              print("双肩背包");
            }),
            Button("手表", onPressed: () {
              print("手表");
            }),
            Button("定制皮鞋", onPressed: () {
              print("定制皮鞋");
            })
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Text(
              "历史记录",
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        Divider(
          color: Colors.grey,
        ),
        Column(
          children: [
            ListTile(
              title: Text("我是拖孩"),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text("我是手机"),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(
                style: ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  print("点击了我");
                },
                icon: Icon(Icons.delete_forever),
                label: Text("清除历史记录"))
          ],
        ),
        // 如果需要撑满屏幕宽度的按钮，可以使用Padding来实现，并且还还可以控制间距
        // Padding(
        //   padding: EdgeInsets.all(10),
        //   child: OutlinedButton.icon(
        //       onPressed: () {
        //         print("点击了我");
        //       },
        //       icon: Icon(Icons.delete_forever),
        //       label: Text("清除历史记录")),
        // )
      ],
    );
  }
}

class Button extends StatelessWidget {
  String text;
  void Function()? onPressed; // 表示传入的方法
  Button(this.text, {super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade200),
          foregroundColor: MaterialStatePropertyAll(Colors.black45)),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
