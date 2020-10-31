import 'package:flutter/material.dart';

import 'package:estay_flutter_template/common/utils/color_util.dart';

import '../extension/int_extension.dart';

class ESAppTheme {
  // 1.通用字体大小
  static final double bodyFontSize = 14.rpx;
  static final double smallFontSize = 16.rpx;
  static final double normalFontSize = 20.rpx;
  static final double largeFontSize = 24.rpx;
  static final double xlargeFontSize = 30.rpx;
  
  // 2.通用页面背景颜色
  static final Color bgColor = Color(0xFF989797);


  // 3.普通模式
  static final ThemeData lightTheme = ThemeData(
    // primaryColor/accentColor的结合体
    primarySwatch: createMaterialColor(Color(0xFFFDCA1F)),
    // 主要颜色: 导航/底部TabBar
    primaryColor: Color(0xFFFDCA1F),
    // 次要颜色: FloatingActionButton/按钮颜色
    accentColor: Colors.orange,

    visualDensity: VisualDensity.adaptivePlatformDensity,
    // 取消点击水波纹效果
    splashColor: Colors.transparent,

    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: bodyFontSize, fontWeight: FontWeight.normal),
    ),
  );


  // 4. 暗黑模式
  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
  );

}