import 'package:flutter/material.dart';

class News extends StatefulWidget {
  final String title; // 接收传过来的值
  final int aid; // 接收传过来的值
  const News({super.key, this.title = '默认值', required this.aid});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  void initState() {
    super.initState();
    print(widget.aid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 自定义返回图标和事件
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // 返回到上一页
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
      appBar: AppBar(
        title: Text(widget.title), // 获取定义的title值
      ),
      body: const Center(child: Text('阿巴阿巴')),
    );
  }
}
