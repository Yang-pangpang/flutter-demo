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
      appBar: AppBar(title: const Text("实现底部导航栏")),
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
