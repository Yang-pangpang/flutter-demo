import 'package:flutter/material.dart';
import './home.dart';
import './category.dart';
import './settings.dart';
import './mine.dart';
import './add.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    HomePage(),
    Category(),
    Add(),
    Settings(),
    Mine()
  ];

  onPressed() {
    setState(() {
      _currentIndex = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("配置菜单栏")),
      // drawer : 左侧菜单栏
      drawer: Drawer(
        child: Column(children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child:
                      // DrawerHeader是自定义抽屉头部，里面的东西都需要自己配置（样式不固定），
                      // DrawerHeader(
                      //     decoration: BoxDecoration(
                      //         color: Colors.purple,
                      //         image: DecorationImage(
                      //             image: NetworkImage(
                      //                 "https://cdn.pixabay.com/photo/2023/05/28/00/34/sunset-8022573_1280.jpg"),
                      //             fit: BoxFit.cover)),
                      //     child: Column(
                      //       children: [
                      //         ListTile(
                      //           leading: CircleAvatar(
                      //             backgroundImage: NetworkImage(
                      //                 "https://cdn.pixabay.com/photo/2023/06/01/06/22/british-shorthair-8032816_1280.jpg"),
                      //           ),
                      //           title: Text(
                      //             "我是菜单栏第一个",
                      //             style: TextStyle(color: Colors.white),
                      //           ),
                      //         ),
                      //       ],
                      //     )),
                      // 头部组件，只需要配置内容即可(样式固定)
                      UserAccountsDrawerHeader(
                    accountName: Text("Yonga"), // 用户名
                    accountEmail: Text("yga****@gmail.com"), // 邮箱
                    // 当前用户头像
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2023/06/01/06/22/british-shorthair-8032816_1280.jpg"),
                    ),
                    // 其他账户头像
                    otherAccountsPictures: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2023/02/10/14/09/dandelion-7780950_1280.jpg"),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2023/04/26/15/51/lighthouse-7952696_1280.jpg"),
                      )
                    ],
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2023/05/28/00/34/sunset-8022573_1280.jpg"))),
                  ))
            ],
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.apple)),
            title: Text("我是菜单栏第一个"),
          ),
          Divider(
            color: Colors.pink,
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.apple)),
            title: Text("我是菜单栏第一个"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.apple)),
            title: Text("我是菜单栏第一个"),
          ),
          Divider(),
        ]),
      ),
      // endDrawer : 右侧菜单栏
      endDrawer: Drawer(child: Text("右侧菜单栏")),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.deepPurple.shade300, // 选中的颜色
          type:
              BottomNavigationBarType.fixed, // 如果底部tabbar数量超过4个（包含4个），必须要配置这个属性
          iconSize: 24, // 底部菜单icon大小
          backgroundColor: Colors.white,
          currentIndex: _currentIndex, // 选中的第几个菜单
          onTap: (index) {
            // 菜单点击事件
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(
                icon: Icon(Icons.catching_pokemon), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "发布"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
          ]),
      floatingActionButton: Container(
        height: 55,
        width: 55,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.yellow : Colors.grey,
          onPressed: onPressed,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
