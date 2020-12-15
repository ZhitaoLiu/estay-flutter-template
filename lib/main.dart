import 'package:flutter/material.dart';

import 'package:estay_flutter_template/env/config_env.dart';
import 'package:estay_flutter_template/router/router.dart';
import 'package:estay_flutter_template/common/theme/app_theme.dart';
import 'package:estay_flutter_template/common/fit/size_fit.dart';
import 'package:provider/provider.dart';

import 'package:estay_flutter_template/viewmodel/home_view_model.dart';
// **viewModel插入标志**

void main() {
  EnvConfig.setENVConfig(ENV.pro);
  mainDelegate();
}

// App启动代理
void mainDelegate() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) => HomeViewModel()),
      // **Provider插入标志**
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 初始化适配
    SizeFit.initialize();

    return MaterialApp(
      title: 'Estay',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: ESRouter.initialRoute,
      routes: ESRouter.routes,
      onGenerateRoute: ESRouter.generateRoute,
      onUnknownRoute: ESRouter.unknownRoute,
    );
  }
}
