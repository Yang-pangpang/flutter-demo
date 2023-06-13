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
        body: Column(
          // 主体区,列排
          children: const [MyApp(), MyButton(), MyText()],
        )),
  ));
}

// MyApp组件，可以在页面类拆分成不同的组件，方便阅读
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 300,
        height: 300,
        margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
        // transform: Matrix4.translationValues(10, 20, 30), // 位移
        // transform: Matrix4.rotationZ(0.3), // 旋转
        transform: Matrix4.skewY(.2), //
        decoration: BoxDecoration(
            color: Colors.blue[400],
            border: Border.all(
              color: Colors.grey.shade400,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.pink.shade700, blurRadius: 40)
            ]),
        child: Text(
          'this is box',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
    );
  }
}

// 按钮组件
class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 40)]),
      child: Text(
        'this is botton',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}

// 文本组件
class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade300,
      ),
      child: Text(
        'Im flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutterIm flutter',
        textAlign: TextAlign.left, // 文字居中位置---靠左
        maxLines: 1, //  最大行数
        overflow: TextOverflow.ellipsis, // 溢出隐藏...
        style: TextStyle(
            // 文字样式
            fontSize: 20, // 字号
            fontWeight: FontWeight.w600, // 字粗
            color: Colors.red.shade600, // 字色
            fontStyle: FontStyle.italic, // 字样式
            letterSpacing: 2, // 字间距
            decoration: TextDecoration.underline, // 文本线
            decorationColor: Colors.black, // 文本线颜色
            decorationStyle: TextDecorationStyle.dashed //  文本线样式
            ),
      ),
    );
  }
}
