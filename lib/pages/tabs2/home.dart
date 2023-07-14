import 'package:flutter/material.dart';
import '../../tools//keppAliveWrapper.dart'; //  引入自定义缓存组件

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    // 监听_tabController的改变事件
    _tabController.addListener(() {
      // print(_tabController.index); // 会获取两次 ，离开一次，进入一次
      if (_tabController.index == _tabController.animation!.value) {
        print(_tabController.index);
      }
    });
  }

  @override
  // 组件销毁的时候触发
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40), // 修改appbar的高度
        child: AppBar(
          elevation: 5, // tabbar底部的阴影
          backgroundColor: Colors.white, // 修改tabbar的背景色
          title: Container(
            // 这里用了Container包裹tabbar组件，是因为在父级tabar中没有直接修改高度的属性，如果appbar高度太低，下面的tabbar会被挡住，所以需要一个容器来修改他的高度，Container和SizeBox都可以
            height: 30,
            child: TabBar(
                isScrollable: true, // 开启滚动
                labelStyle: TextStyle(fontSize: 14),
                indicatorColor: Colors.red, //  指示器的颜色---下面的横线
                unselectedLabelColor: Colors.black, // label未选中的颜色,
                labelColor: Colors.red, // 当前选中的label
                indicatorSize:
                    TabBarIndicatorSize.label, // label表示指示器和文字等长,默认值是tab
                controller: _tabController,
                // onTap: (index) {
                //   // 只能监听点击事件，不能监听滑动
                //   print(index);
                // },
                tabs: [
                  Tab(
                    child: Text('卧槽'),
                  ),
                  Tab(
                    child: Text('牛逼'),
                  ),
                  Tab(
                    child: Text('李大伟'),
                  ),
                  Tab(
                    child: Text('天天'),
                  ),
                  Tab(
                    child: Text('瞎几把'),
                  ),
                  Tab(
                    child: Text('黑我'),
                  ),
                  Tab(
                    child: Text('造谣'),
                  ),
                  Tab(
                    child: Text('诽谤'),
                  ),
                ]),
          ),
          centerTitle: true, // 标题居中
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          KeepAliveWrapper(
            // 自定义缓存组件
            child: ListView(
              children: [
                ListTile(
                  title: Text("我是卧槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽槽槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽槽槽槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽槽槽槽槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽槽槽槽槽槽槽槽槽槽"),
                ),
                ListTile(
                  title: Text("我是卧槽槽槽槽槽槽槽槽槽槽槽槽槽槽槽槽"),
                ),
              ],
            ),
          ),
          Text("我是牛逼"),
          Text("我是李大伟"),
          Text("我是挖挖机"),
          Text("我是钓鱼佬"),
          Text("我是五金"),
          Text("我是辣鸡"),
          Text("我是小菜鸡"),
        ],
      ),
    );
  }
}
