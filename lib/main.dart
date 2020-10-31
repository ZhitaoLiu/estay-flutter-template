
import 'package:flutter/material.dart';

import 'package:estay_flutter_template/env/config_env.dart';
import 'package:estay_flutter_template/router/router.dart';
import 'package:estay_flutter_template/common/theme/app_theme.dart';
import 'package:estay_flutter_template/common/fit/size_fit.dart';

void main() {
  ESEnvConfig.setENVConfig(ENV.pro);
  mainDelegate();
}

// App启动代理
void mainDelegate() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 初始化适配
    ESSizeFit.initialize();

    return MaterialApp(
      title: 'Estay',
      theme: ESAppTheme.lightTheme,
      darkTheme: ESAppTheme.darkTheme,
      initialRoute: ESRouter.initialRoute,
      routes: ESRouter.routes,
      onGenerateRoute: ESRouter.generateRoute,
      onUnknownRoute: ESRouter.unknownRoute,
    );
  }
}
