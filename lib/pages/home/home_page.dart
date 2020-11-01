import 'package:estay_flutter_template/model/home_model.dart';
import 'package:estay_flutter_template/viewmodel/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:provider/provider.dart';

import 'package:estay_flutter_template/pages/detail/detail_page.dart';

class ESHomePage extends StatefulWidget {
  @override
  _ESHomePageState createState() => _ESHomePageState();
}

class _ESHomePageState extends State<ESHomePage> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container(
        child: Selector<HomeViewModel, List<BannerModel>>(
          selector: (ctx, HomeVM) {
            return HomeVM.banners;
          },
          shouldRebuild: (prev, next) => !ListEquality().equals(prev, next),
          builder: (ctx, banners, child) {
              return ListView.builder(
                  itemCount: banners.length,
                  itemBuilder: (ctx, index) {
                    return Container(child: Text(banners[index].name),);
                  }
              );
          },
        ),
      ),
    );
  }
}
