
import 'package:flutter/material.dart';

import 'package:estay_flutter_template/pages/main/main_page.dart';
import 'package:estay_flutter_template/pages/detail/detail_page.dart';
import 'package:estay_flutter_template/pages/about/about_page.dart';
import 'package:estay_flutter_template/pages/unknown/unknown_page.dart';
// **路由路径插入标志**

class ESRouter {

  // 入口路由
  static final String initialRoute = ESMainPage.routeName;

  // 路由配置
  static final Map<String, WidgetBuilder> routes = {
    ESMainPage.routeName: (ctx) => ESMainPage(),
    ESAboutPage.routeName: (ctx) => ESAboutPage(),
    // **路由页面插入标志**
  };

  // 路由钩子
  static final RouteFactory generateRoute = (settings) {
    switch(settings.name) {
      case '/detail':
        return MaterialPageRoute(
          builder: (ctx) {
            return ESDetailPage(settings.arguments);
          }
        );
        break;
      default:
        return null;
        break;
    }
  };

  // 未知路由
  static final RouteFactory unknownRoute = (settings) {
    return MaterialPageRoute(
        builder: (ctx) {
          return ESUnknownPage();
        }
    );
  };

}