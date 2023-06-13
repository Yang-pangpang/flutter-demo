import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    // MateralApp ：官方主体组件
    home: Scaffold(
        // 导航栏
        appBar: AppBar(
          title: Text(
            'this is flutter title',
          ),
        ),
        // 主体区,列排
        body: Column(
          children: const [
            MyApp(),
            SizedBox(height: 40), // 配置区块的组件
            Circular(),
            SizedBox(height: 40),
            ClipImg(),
            SizedBox(height: 40),
            LocalImg()
          ],
        )),
  ));
}

// 图片组件
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        width: 150,
        // margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
        decoration: BoxDecoration(
            color: Colors.pink.shade100,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(color: Colors.green.shade600, blurRadius: 40)
            ]),
        child: Image.network(
          // 加载网络图片，使用Image.network
          "https://image.soole.com.cn/44b4b3b5-a536-4a52-bceb-b0e80fd3c7bd.gif",
          // alignment: Alignment.center, // 控制图片方位
          fit: BoxFit.fill, // 相当于css object-fit
          repeat: ImageRepeat.noRepeat,
        ),
      ),
    );
  }
}

// 圆形图片
class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        // margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
        decoration: BoxDecoration(
            color: Colors.indigo.shade400,
            borderRadius: BorderRadius.circular(75),
            boxShadow: [BoxShadow(color: Colors.pink.shade400, blurRadius: 40)],
            image: DecorationImage(
                // 背景图片
                image: NetworkImage(
                    "https://image.soole.com.cn/44b4b3b5-a536-4a52-bceb-b0e80fd3c7bd.gif"),
                fit: BoxFit.cover)),
      ),
    );
  }
}

// 圆角图片   使用ClipOval实现
class ClipImg extends StatelessWidget {
  const ClipImg({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://image.soole.com.cn/44b4b3b5-a536-4a52-bceb-b0e80fd3c7bd.gif",
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

// 加载本地图片
class LocalImg extends StatelessWidget {
  const LocalImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.purple.shade600,
          borderRadius: BorderRadius.circular(75)),
      child: Image.asset(
        "images/register-success-icon2.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
