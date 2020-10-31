import 'package:flutter/material.dart';

import 'package:estay_flutter_template/pages/detail/detail_page.dart';

class ESHomePage extends StatefulWidget {
  @override
  _ESHomePageState createState() => _ESHomePageState();
}

class _ESHomePageState extends State<ESHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container(
        child: Align(
          child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(ESDetailPage.routeName, arguments: 12);
              },
              child: Text('这是首页的内容')
          ),
        ),
      ),
    );
  }
}
