import 'package:flutter/material.dart'; //  官方主题包

void main() {
  // runApp(Center(
  //     // Center (): 表示居中组件
  //     child: Text(
  //   // Text()：文本组件
  //   '我才第一天学习Flutter', // 文本内容
  //   textDirection: TextDirection.ltr, // 对齐方式   ltr左对齐
  //   style: TextStyle(
  //       // color: Colors.red  // style：样式组件
  //       color: Color.fromRGBO(125, 125, 125, 0.5),
  //       fontSize: 40),
  // )));
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Flutter牛逼")),
      body: const MyApp(),
    ),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(
//         'flutter牛逼惨了,我是一个自定义组件',
//         textDirection: TextDirection.ltr,
//         style: TextStyle(color: Color.fromRGBO(244, 230, 158, 1), fontSize: 38),
//       ),
//     );
//   }
// }

// 自定义代码块,快捷键 statelessW
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center, // 配置container容器居中显示
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Color.fromRGBO(84, 255, 159, 0.5), // 背景颜色
            border: Border.all(
                // 边框
                color: Colors.red,
                width: 2),
            borderRadius: BorderRadius.circular(10), // 圆角
            boxShadow: [
              BoxShadow(color: Colors.blue, blurRadius: 20), // 阴影
            ],
            gradient: LinearGradient(
                colors: [Colors.yellow.shade900, Colors.green.shade900])),

        child: Text(
          'hello',
          style: const TextStyle(color: Colors.orangeAccent, fontSize: 20),
        ),
      ),
    );
  }
}
