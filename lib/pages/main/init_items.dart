
import 'package:flutter/material.dart';

import 'package:estay_flutter_template/pages/destination/destination_page.dart';
import 'package:estay_flutter_template/pages/home/home_page.dart';
import 'package:estay_flutter_template/pages/order/order_page.dart';
import 'package:estay_flutter_template/pages/mine/mine_page.dart';



final List<Widget> pages = [
  ESHomePage(),
  ESDestinationPage(),
  ESOrderPage(),
  ESMinePage(),
];

final List<BottomNavigationBarItem> items = [
  _bottomNavBarItem("首页", "home"),
  _bottomNavBarItem("目的地", "destination"),
  _bottomNavBarItem("订单", "order"),
  _bottomNavBarItem("我的", "mine")
];


BottomNavigationBarItem _bottomNavBarItem(String title, String imgName) {
  return BottomNavigationBarItem(
    title: Text(title),
    icon: Image.asset('assets/images/common/${imgName}.png', width: 40, height: 40,),
    activeIcon: Image.asset('assets/images/common/${imgName}_s.png', width: 40, height: 40,),
  );
}