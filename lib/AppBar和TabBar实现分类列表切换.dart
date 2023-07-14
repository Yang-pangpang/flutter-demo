import 'package:demo/iconfont.dart';
import 'package:flutter/material.dart';
import './req/listData.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // 是否显示debug显示条，默认是开启的
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: HomePage());
  }
}

// StatefulWidget实现动态列表
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController; // _tabController
  // 混入
  // 一个生命周期钩子函数：当组件初始化的时候就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 配置头部左侧图标按钮   图标在前，文字在后
        leading: IconButton(
          icon: Icon(Icons.apple),
          onPressed: () => {},
        ),
        backgroundColor: Colors.purple, // 整体背景色
        title: Text("header"),
        actions: [
          // 如果右侧有多个图标，直接放在数组里面就可以
          // 右侧的按钮图标
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () => {},
          ),
        ],
        bottom: TabBar(
            controller: _tabController, // 当前tab菜单栏
            isScrollable: true, // 是否可以滚动
            indicatorColor: Colors.white, // 指示器的颜色
            indicatorWeight: 2, // 指示器的高度
            indicatorPadding: EdgeInsets.all(0), // 指示器的间距
            indicatorSize: TabBarIndicatorSize.label, // label表示指示器和文字等长,默认值是tab
            // indicator: BoxDecoration(
            //     color: Colors.blue,
            //     borderRadius:
            //         BorderRadius.circular(10)), // 当前选中的tab背景颜色,一般不用，很丑
            labelColor: Colors.tealAccent, // 当前选中指示器的颜色,
            unselectedLabelColor: Colors.black, // 其他未选中指示器的颜色,配合labelColor一起使用
            labelStyle: TextStyle(fontSize: 14), // label配置样式，可以修改文字大小等,
            unselectedLabelStyle: TextStyle(
                fontSize: 16), // label配置样式，可以修改文字大小等, 配合labelStyle一起使用
            tabs: [
              Tab(
                child: Text("推荐"),
              ),
              Tab(
                child: Text("零食"),
              ),
              Tab(
                child: Text("酒水"),
              ),
              Tab(
                child: Text("肉蛋禽"),
              ),
              Tab(
                child: Text("海外好货"),
              ),
              Tab(
                child: Text("五金"),
              ),
              Tab(
                child: Text("挖掘机"),
              )
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        ListView(
          children: [
            ListTile(
              title: Text("第一个是推荐"),
            ),
          ],
        ),
        ListView(
          children: [
            ListTile(
              title: Text("第二个是零食"),
            ),
          ],
        ),
        ListView(
          children: [
            ListTile(
              title: Text("第三个是酒水"),
            ),
          ],
        ),
        ListView(
          children: [
            ListTile(
              title: Text("第四个是肉蛋禽"),
            ),
          ],
        ),
        ListView(
          children: [
            ListTile(
              title: Text("第五个是海外好货"),
            ),
          ],
        ),
        ListView(
          children: [
            ListTile(
              title: Text("第六个是五金"),
            ),
          ],
        ),
        ListView(
          children: [
            ListTile(
              title: Text("第七个是挖掘机"),
            ),
          ],
        )
      ]),
    );
  }
}
