// 自定义Icon组件
import 'package:flutter/material.dart';

class MyIcon {
  static const IconData paypal =
      IconData(0xe634, // 16进制   0x开头  后面是icon的unicode
          fontFamily: "MyIcon", // 对应pubspec.yaml中的font 自定义字体名
          matchTextDirection: true);
  static const IconData qq =
      IconData(0xe630, fontFamily: "MyIcon", matchTextDirection: true);
  static const IconData robot =
      IconData(0xe87d, fontFamily: "MyIcon", matchTextDirection: true);
}
