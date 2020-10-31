import 'package:flutter/material.dart';

class ESAboutPage extends StatefulWidget {

  static const routeName = '/about';

  @override
  _ESAboutPageState createState() => _ESAboutPageState();
}

class _ESAboutPageState extends State<ESAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('关于我们'),
      ),
      body: Container(
        child: Align(
          child: Text('这个关于我们的页面内容'),
        ),
      ),
    );
  }
}