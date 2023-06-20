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
        body: LayoutCom2(),
      ),
    );
  }
}

// 文字卡片列表效果
class LayoutCom extends StatelessWidget {
  const LayoutCom({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
            elevation: 10, // 阴影深度
            color: Colors.amber.shade100, // 背景色
            margin: EdgeInsets.all(10),
            shadowColor: Colors.deepPurpleAccent.shade100,
            shape: RoundedRectangleBorder // Card的阴影效果
                (
              borderRadius: BorderRadius.circular(10), // Card圆角
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Yonga",
                    style: TextStyle(fontSize: 28, color: Colors.pink),
                  ),
                  subtitle: Text('前端开发工程师'),
                ),
                Divider(),
                ListTile(
                  title: Text("电话:185xxxx1126"),
                ),
                ListTile(
                  title: Text("地址:成都市锦江区东大路"),
                )
              ],
            )),
        Card(
            elevation: 10, // 阴影深度
            color: Colors.pink.shade100, // 背景色
            margin: EdgeInsets.all(10),
            shadowColor: Colors.green.shade100,
            shape: RoundedRectangleBorder // Card的阴影效果
                (
              borderRadius: BorderRadius.circular(10), // Card圆角
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "杨哈哈",
                    style: TextStyle(fontSize: 28, color: Colors.orange),
                  ),
                  subtitle: Text('阿巴阿巴工程师'),
                ),
                Divider(),
                ListTile(
                  title: Text("电话:182xxxx4567"),
                ),
                ListTile(
                  title: Text("地址:成都市武侯区"),
                )
              ],
            ))
      ],
    );
  }
}

// 图文卡片列表效果
class LayoutCom1 extends StatelessWidget {
  const LayoutCom1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2023/06/14/20/29/flower-8063961_1280.jpg",
                  fit: BoxFit.cover,
                  scale: 1,
                ),
              ),
              ListTile(
                // leading: ClipOval(
                //     // 圆形图片组件，只需定义宽高即可
                //     child: Image.network(
                //   "https://cdn.pixabay.com/photo/2023/05/31/17/54/cat-8031947_1280.jpg",
                //   fit: BoxFit.cover,
                //   height: 44,
                //   width: 44,
                // )),
                leading: CircleAvatar(
                  // 圆形图片组件,不需要指定宽高,自适应
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2023/06/01/06/22/british-shorthair-8032816_1280.jpg"),
                ),
                title: Text("我是阿巴阿巴"),
                subtitle: Text("xxxxxxxxxxxxx"),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// 动态循环展示
class LayoutCom2 extends StatelessWidget {
  const LayoutCom2({super.key});
  List<Widget> _initCardData() {
    var list = listData.map((item) {
      return Card(
        margin: EdgeInsets.all(10),
        elevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  clipBehavior: Clip.hardEdge, //强制溢出裁剪
                  child: Image.network(
                    item["url"],
                    fit: BoxFit.cover,
                    scale: 1,
                  ),
                )),
            ListTile(
              leading: CircleAvatar(
                // 圆形图片组件,不需要指定宽高,自适应
                backgroundImage: NetworkImage(item["url"]),
              ),
              title: Text(item["title"]),
              subtitle: Text(item["description"]),
            )
          ],
        ),
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initCardData(),
    );
  }
}
