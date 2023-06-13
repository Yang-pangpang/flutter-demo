import 'package:flutter/material.dart';
import './iconfont.dart'; // 引入自定义的icon

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
        body: MyList2(),
      ),
    );
  }
}

// 使用内置图标
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
            leading: Icon(
              MyIcon.paypal,
              color: Colors.blue,
            ),
            title: Text("这是支付宝")),
        Divider(),
        ListTile(
            leading: Icon(
              MyIcon.qq,
              color: Colors.black,
            ),
            title: Text("噢QQ爱，是真是假谁去猜")),
        Divider(),
        ListTile(
            leading: Icon(
              MyIcon.robot,
              color: Colors.yellow,
            ),
            title: Text("机器人")),
        Divider(),
        ListTile(
            // 使用外部图片icon
            leading: Image.network(
                "https://image.soole.com.cn/44b4b3b5-a536-4a52-bceb-b0e80fd3c7bd.gif"),
            title: Text("外部图片Icon")),
        Divider(),
        ListTile(
          title: Text("列表组件5"),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Image.network(
              "https://image.soole.com.cn/44b4b3b5-a536-4a52-bceb-b0e80fd3c7bd.gif"),
          title: Text("德总理朔尔茨：比起特朗普更喜欢拜登 希望拜登能连任"),
          subtitle: Text(
              "中新网5月23日电 据路透社报道，德国总理朔尔茨22日在柏林附近的一所小学发表讲话时提到，他更喜欢美国总统拜登，而不是其前任特朗普，并希望拜登能够连任。"),
        ),
        Divider(),
        ListTile(
          leading: Image.network(
              "https://image.soole.com.cn/44b4b3b5-a536-4a52-bceb-b0e80fd3c7bd.gif"),
          title: Text("德总理朔尔茨：比起特朗普更喜欢拜登 希望拜登能连任"),
          subtitle: Text(
              "中新网5月23日电 据路透社报道，德国总理朔尔茨22日在柏林附近的一所小学发表讲话时提到，他更喜欢美国总统拜登，而不是其前任特朗普，并希望拜登能够连任。"),
        ),
        Divider(),
        ListTile(
          leading: Image.network(
              "https://image.soole.com.cn/44b4b3b5-a536-4a52-bceb-b0e80fd3c7bd.gif"),
          title: Text("德总理朔尔茨：比起特朗普更喜欢拜登 希望拜登能连任"),
          subtitle: Text(
              "中新网5月23日电 据路透社报道，德国总理朔尔茨22日在柏林附近的一所小学发表讲话时提到，他更喜欢美国总统拜登，而不是其前任特朗普，并希望拜登能够连任。"),
        )
      ],
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network(
            "https://image.soole.com.cn/44b4b3b5-a536-4a52-bceb-b0e80fd3c7bd.gif"),
        Container(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
          height: 44,
          child: Text(
            "这是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        )
      ],
    );
  }
}

// 水平列表
class MyList2 extends StatelessWidget {
  const MyList2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        child: ListView(
          // 如果需要控制ListView的宽高，可以在外层加一个SizeBox,再给sizebox设置宽高
          scrollDirection:
              Axis.horizontal, // 排列方式，horizontal是水平列表，默认是垂直列表(vertical)
          padding: EdgeInsets.all(10),
          children: [
            Container(
              height: 120, // 如果排列方式是水平列表，设置的高度是无效的，高度自适应
              width: 120, // 如果使用了ListView(垂直排列)，设置的宽度是无效的，自适应宽度
              decoration: BoxDecoration(color: Colors.white),
              child: Column(children: [
                SizedBox(
                  height: 80,
                  child: Image.network(
                    "https://image.soole.com.cn/44b4b3b5-a536-4a52-bceb-b0e80fd3c7bd.gif",
                    fit: BoxFit.cover,
                  ),
                ),
                Text("这是文字")
              ]),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(color: Colors.blue.shade200),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(color: Colors.orange.shade300),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(color: Colors.pink.shade300),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(color: Colors.green.shade300),
            ),
          ],
        ));
  }
}
